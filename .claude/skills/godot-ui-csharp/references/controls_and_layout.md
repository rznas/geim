# Control nodes, anchors & containers (Godot 4.6)

## Common Control nodes

| Node | For |
|------|-----|
| `Label` / `RichTextLabel` | text (RichText supports BBCode) |
| `Button` / `TextureButton` | clickable; `Pressed` / `Toggled` signals |
| `TextureRect` / `NinePatchRect` | images, scalable panels |
| `ProgressBar` / `TextureProgressBar` | health/mana/loading bars |
| `LineEdit` / `TextEdit` | text input |
| `OptionButton` / `CheckBox` / `CheckButton` | dropdowns, toggles |
| `HSlider` / `VSlider` | volume/value sliders |
| `Panel` / `PanelContainer` / `ColorRect` | backgrounds |
| `CanvasLayer` | render UI above the game world (HUD) — wrap HUD in one |

## Anchors (resolution-independent placement)

`anchor_left/top/right/bottom` are fractions (0..1) of the parent. `offset_*`
adds pixels. The editor's anchor presets set these for you:
- **Full Rect** — all anchors 0/1: fills parent. (HUD root, backgrounds.)
- **Center** — anchors at 0.5: stays centered.
- **Bottom Wide / Top Wide** — stick to an edge, full width.

C#: `control.SetAnchorsPreset(Control.LayoutPreset.FullRect);` then adjust
offsets. Anchors are the right tool for elements that should track screen edges.

## Containers (automatic layout)

A `Container` positions its children; children give up manual placement and use
**sizing flags** instead:
- `SizeFlagsHorizontal` / `SizeFlagsVertical` = `Fill` (default), `Expand`,
  `ShrinkBegin/Center/End`, combined.
- `SizeFlagsStretchRatio` — relative share among Expanding siblings.

Types: `HBoxContainer` / `VBoxContainer` (rows/columns), `GridContainer`
(`Columns`), `MarginContainer` (padding via theme constants), `TabContainer`
(stacked pages), `HSplitContainer`/`VSplitContainer` (draggable divider),
`CenterContainer`, `ScrollContainer`, `PanelContainer` (background + single
child). Nest them for complex UIs.

```csharp
var box = new VBoxContainer();
foreach (var name in items)
{
    var b = new Button { Text = name };
    b.Pressed += () => Select(name);
    box.AddChild(b);          // container arranges them; don't set positions
}
AddChild(box);
```

## Menu / pause / dialog patterns

```csharp
// Pause menu: pause the tree, show the menu (menu must process while paused).
public void TogglePause()
{
    var paused = !GetTree().Paused;
    GetTree().Paused = paused;
    GetNode<Control>("PauseMenu").Visible = paused;
}
```
Set the pause menu's `ProcessMode = ProcessModeEnum.WhenPaused` (or `Always`) so
it still responds while the rest of the tree is frozen.

A modal dialog: an `AcceptDialog` / `ConfirmationDialog` (`PopupCentered()`,
`Confirmed` signal), or a custom `Control` with a dimming `ColorRect` behind it.

## Focus & controller/keyboard navigation

```csharp
GetNode<Button>("Start").GrabFocus();        // initial focus for gamepad/keyboard
// Define focus neighbors (or let Godot auto-compute from layout):
btnA.FocusNeighborBottom = btnB.GetPath();
```
Set `mouse_filter` to `Stop`/`Pass`/`Ignore` to control which controls eat mouse
events — an invisible full-rect control with `Stop` silently blocks clicks.

## Responsive / multi-resolution

In `project.godot` under `[display]`:
```
window/stretch/mode="canvas_items"
window/stretch/aspect="expand"
window/size/viewport_width=1920
window/size/viewport_height=1080
```
`canvas_items` + `expand` is the common 2D-UI choice: UI scales with the window
and extra space is revealed rather than letterboxed. Use `viewport` mode for a
fixed pixel-art resolution that scales as a block.
