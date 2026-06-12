# NPC / enemy AI in C# (Godot 4.6)

Two layers: **what** the NPC decides (behavior) and **how** it gets there
(navigation). Keep both deterministic so they're testable headlessly.

## State machine (behavior)

For most enemies an enum + switch FSM is the right amount of structure — easy to
read, extend, and assert on. Graduate to node-based or hierarchical FSMs only
when states get many and share sub-behaviors.

```csharp
public partial class Enemy : CharacterBody2D
{
    public enum State { Idle, Patrol, Chase, Attack }
    [Export] public State Current { get; private set; } = State.Idle;

    [Export] public float Speed = 120f;
    [Export] public float AggroRange = 200f;
    [Export] public float AttackRange = 40f;

    private Player _player;
    private RayCast2D _los;

    public override void _Ready()
    {
        _player = GetTree().GetFirstNodeInGroup("player") as Player;
        _los = GetNodeOrNull<RayCast2D>("LineOfSight");
    }

    public override void _PhysicsProcess(double delta)
    {
        Transition();           // perception → state
        Act(delta);             // act on current state
    }

    private void Transition()
    {
        if (_player is null) { Current = State.Idle; return; }
        float d = GlobalPosition.DistanceTo(_player.GlobalPosition);
        bool sees = CanSeePlayer();

        Current = (d, sees) switch
        {
            ( <= 40f, true) => State.Attack,
            ( <= 200f, true) => State.Chase,
            _ when Current == State.Chase && d < 320f => State.Chase, // sticky chase
            _ => State.Patrol,
        };
    }

    private void Act(double delta)
    {
        switch (Current)
        {
            case State.Idle:   Velocity = Vector2.Zero; break;
            case State.Patrol: Patrol(delta); break;
            case State.Chase:  MoveToward(_player.GlobalPosition); break;
            case State.Attack: Velocity = Vector2.Zero; /* fire/melee */ break;
        }
        MoveAndSlide();
    }

    private bool CanSeePlayer()
    {
        if (_los is null || _player is null) return false;
        _los.TargetPosition = ToLocal(_player.GlobalPosition);
        _los.ForceRaycastUpdate();
        return _los.IsColliding() && _los.GetCollider() is Player;
    }

    private void MoveToward(Vector2 target)
        => Velocity = (target - GlobalPosition).Normalized() * Speed;

    private void Patrol(double delta) { /* sweep between markers */ }
}
```

Because `Current` is exported and transitions are pure functions of perception,
a headless test can place a player at a distance, step one physics frame, and
assert `enemy.Current == State.Chase`. That's the whole point of this shape.

## Navigation (movement to a target)

For anything past straight-line chase (walls, obstacles, level geometry), use a
`NavigationAgent2D/3D` child over a baked `NavigationRegion2D/3D`. This is the
exact pattern from Godot 4.6's `navigation_using_navigationagents` C# template —
copy it; the guard clauses are not optional.

```csharp
[Export] public float MovementSpeed { get; set; } = 120f;
private NavigationAgent2D _navigationAgent;

public override void _Ready()
{
    _navigationAgent = GetNode<NavigationAgent2D>("NavigationAgent2D");
    // Avoidance returns a corrected velocity through this signal.
    _navigationAgent.VelocityComputed += OnVelocityComputed;
}

private void SetMovementTarget(Vector2 target)
    => _navigationAgent.TargetPosition = target;     // setting this queries a new path

public override void _PhysicsProcess(double delta)
{
    // Do NOT query before the navigation map has synchronized — it returns an
    // empty path and the agent thinks it has already arrived. This guard is the
    // official fix for "agent won't move / path is empty".
    if (NavigationServer2D.MapGetIterationId(_navigationAgent.GetNavigationMap()) == 0)
        return;
    if (_navigationAgent.IsNavigationFinished())
        return;

    Vector2 next = _navigationAgent.GetNextPathPosition();
    Vector2 newVelocity = GlobalPosition.DirectionTo(next) * MovementSpeed;

    if (_navigationAgent.AvoidanceEnabled)
        _navigationAgent.Velocity = newVelocity;     // routed through OnVelocityComputed
    else
        OnVelocityComputed(newVelocity);
}

private void OnVelocityComputed(Vector2 safeVelocity)
{
    Velocity = safeVelocity;
    MoveAndSlide();
}
```

Gotchas (all from the official doc):
- **The region must be baked.** A `NavigationRegion2D` needs a baked
  `NavigationPolygon`. Unbaked region = empty path = agent never moves.
- **Don't query before map sync.** Querying `GetNextPathPosition()` in `_Ready`
  or on the first frame returns the agent's own position (= "arrived"). The
  `MapGetIterationId(...) == 0` guard above is the sanctioned fix.
- **Call `GetNextPathPosition()` once per physics frame**, only until
  `IsNavigationFinished()`. Calling it after arrival makes the agent jitter.
- **Avoidance** needs `AvoidanceEnabled = true`; then feed the agent your
  intended `Velocity` and *move using the `VelocityComputed` safe velocity*, not
  your raw velocity. The agent **must** still have a `TargetPosition` or the safe
  velocity is always zero.

## Steering without a nav mesh

For open arenas, simple steering is enough and cheaper: seek
(`(target-pos).Normalized()*speed`), flee (negate), arrive (scale speed down
near target), separation (push away from nearby allies). Compose forces, clamp,
apply as `Velocity`.
