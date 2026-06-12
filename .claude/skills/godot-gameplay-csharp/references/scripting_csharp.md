# Gameplay scripting in C# (Godot 4.6)

Verified idioms. The C# API is PascalCase where GDScript/C++ is snake_case; most
node members map 1:1, so a GDScript example translates by case-converting names.

## Lifecycle overrides

```csharp
public partial class Player : CharacterBody2D
{
    public override void _Ready() { }            // once, on entering the tree
    public override void _Process(double delta) { }        // every rendered frame
    public override void _PhysicsProcess(double delta) { } // every physics tick (fixed)
    public override void _Input(InputEvent e) { }          // on each input event
    public override void _UnhandledInput(InputEvent e) { } // input not consumed by UI
}
```

Use `_PhysicsProcess` for movement/physics (fixed timestep), `_Process` for
visuals/UI. `delta` is `double` in C#.

## Accessing nodes

```csharp
var sprite = GetNode<Sprite2D>("Visual/Sprite");   // throws if missing/wrong type
var maybe  = GetNodeOrNull<Area2D>("Hitbox");       // null if missing/wrong type
maybe?.SetDeferred(Area2D.PropertyName.Monitoring, false);
```

Node paths are relative to the node the script is on. `%UniqueName` accesses a
scene-unique node anywhere in the owning scene. Don't use `res://` for live-tree
lookups — that's for loading resources, not navigating the tree.

## Input

Define actions in `project.godot` under `[input]` (or Project Settings → Input
Map), then read them by name — never hardcode keycodes:

```csharp
if (Input.IsActionPressed("move_right")) velocity.X += speed;
Vector2 dir = Input.GetVector("move_left", "move_right", "move_up", "move_down");
if (Input.IsActionJustPressed("jump")) Jump();
```

## Signals as C# events (the idiomatic way)

Built-in signals are exposed as events:

```csharp
GetNode<Timer>("Cooldown").Timeout += OnCooldownDone;
GetNode<Button>("Start").Pressed += () => GD.Print("clicked");
```

Declare a custom signal with `[Signal]` on a delegate whose name ends in
`EventHandler`; the event name drops that suffix:

```csharp
[Signal] public delegate void DiedEventHandler(int score);

public override void _Ready() => Died += s => GD.Print($"died with {s}");
private void Kill() => EmitSignal(SignalName.Died, _score);
```

Use the generated `SignalName.Died` StringName when emitting — no allocation, no
snake_case worries. Rebuild the project for new `[Signal]`/`[Export]` members to
show up in the editor.

## Instancing scenes (spawning)

```csharp
// Load the packed scene once (e.g. cache in a field), then instance per spawn.
private PackedScene _enemyScene = GD.Load<PackedScene>("res://scenes/Enemy.tscn");

private void Spawn(Vector2 at)
{
    var enemy = _enemyScene.Instantiate<Enemy>();
    enemy.GlobalPosition = at;
    AddChild(enemy);          // or CallDeferred(Node.MethodName.AddChild, enemy)
}
```

Add during physics/signal callbacks via `CallDeferred(Node.MethodName.AddChild,
enemy)` to avoid "flushing queries" errors while the tree is locked.

## Groups

```csharp
AddToGroup("enemies");
GetTree().CallGroup("enemies", Enemy.MethodName.Alert);   // snake_case under the hood? no:
foreach (var n in GetTree().GetNodesInGroup("enemies")) ((Enemy)n).Alert();
```

Prefer iterating `GetNodesInGroup` with typed casts over string `CallGroup`.

## Timers and awaiting

```csharp
await ToSignal(GetTree().CreateTimer(1.5), SceneTimer.SignalName.Timeout);
// (one-shot delay without a Timer node)
await ToSignal(GetTree(), SceneTree.SignalName.ProcessFrame); // wait one frame
```

## Autoload singletons (global state / managers)

Register under `[autoload]` in `project.godot`:
`GameState="*res://scripts/GameState.cs"` (the `*` enables it). The class is then
reachable from any node:

```csharp
var gs = GetNode<GameState>("/root/GameState");
```

Use autoloads sparingly — for genuinely global services (save system, audio
manager, scene router), not as a dumping ground.

## The struct-copy trap (worth repeating)

`Position`, `Velocity`, `GlobalTransform`, etc. return value-type copies:

```csharp
Velocity = new Vector2(0, Velocity.Y + gravity * (float)delta);
MoveAndSlide();                 // uses & updates Velocity in place for bodies
// NOT: Velocity.Y += ...   (CS1612)
```
