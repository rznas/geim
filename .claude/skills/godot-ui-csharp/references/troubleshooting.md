# UI troubleshooting (Godot 4.6)

## Control is invisible

- **Zero size** — a bare `Control` with no anchors/size is 0×0. Set a size, an
  anchor preset (Full Rect), or put it in a Container that gives it size.
- **Behind something** — sibling order = draw order; later siblings draw on top.
  Move it down in the tree or raise its `z_index`/CanvasLayer.
- **HUD under the world** — wrap HUD in a `CanvasLayer` so it draws above the
  game and isn't moved by the camera.
- **`Visible = false`** somewhere up the parent chain.

## Can't position a child control

It's inside a `Container`, which owns positioning — manual `Position`/anchors are
ignored. Use **sizing flags** (`SizeFlagsHorizontal/Vertical` = Fill/Expand/
Shrink, `SizeFlagsStretchRatio`) instead, or take it out of the container.

## Button click does nothing

- The `Pressed` signal isn't connected (`button.Pressed += OnClick;`), or you
  connected on the wrong node.
- **`mouse_filter = Ignore`** on the button, or an invisible control with
  `mouse_filter = Stop` covering it eats the click. Set the blocker to `Ignore`
  or shrink it.
- The button is `Disabled`.

## UI doesn't scale on other resolutions

Stretch mode isn't set. In `project.godot [display]` set
`window/stretch/mode="canvas_items"` and `window/stretch/aspect="expand"`, and a
base `viewport_width/height`. Then anchors + containers handle scaling.

## ProgressBar / health bar doesn't move

- `Value` is outside `MinValue..MaxValue` (clamped). Set `MaxValue` to your max
  HP, then assign `Value`.
- You're updating a copy or the wrong node path.

## Text doesn't translate

- The translation **key isn't in the translation file** for the active locale —
  Godot shows the key verbatim. Add it to the CSV/PO.
- The locale isn't set / no translations registered in project settings.
- For dynamic strings built in code, you forgot `tr(...)`.

## Chinese/Japanese text shows as boxes

The font lacks CJK glyphs. Assign a CJK-capable `FontFile` (Noto Sans CJK) in the
Theme's default font or as a `font` override.

## Focus/controller navigation skips around

Let Godot auto-compute neighbors from layout, or set `FocusNeighbor*`
explicitly. Call `GrabFocus()` on the first control when a menu opens so the
gamepad has a starting point.
