---
name: godot-ui-csharp
description: >
  Build user interfaces — menus, HUDs, dialogs, settings screens — for a Godot
  4.6 C# game. Use this whenever you are creating Control-node UI (Button, Label,
  TextureRect, ProgressBar, LineEdit, OptionButton), laying out screens with
  anchors and Containers (HBox/VBox/Grid/Margin/Tab), theming/skinning UI with
  Theme + StyleBox, wiring buttons and sliders to C#, building a HUD that reflects
  game state (health bars, score), handling focus/keyboard/controller navigation,
  responsive multi-resolution layout, or localizing UI text (i18n, tr()). Reach
  for it any time the task is "make a main menu", "add a health bar", "pause
  screen", "settings with a volume slider", "the UI doesn't scale on other
  resolutions", "translate the menu", or "hook this button up". It has the verified
  Control/Container/anchor model, the C# signal wiring, and the theming and
  localization APIs. Covers UI/UX Artist and Technical Designer work. Assumes a
  buildable project (godot-project-setup).
---

# Godot UI in C#

All UI is built from **Control** nodes (a separate node family from Node2D/3D).
Layout is done with **anchors** (for resolution independence) and **Containers**
(for automatic arrangement). Appearance comes from **Theme** + **StyleBox**. Your
C# reacts to signals and pushes game state into the UI.

## The two layout systems — know when to use each

- **Anchors** (size_and_anchors): pin a Control's edges to fractions of its
  parent (0=left/top, 1=right/bottom). Presets like "Full Rect", "Center",
  "Bottom Wide" cover most HUD placement. Use anchors for standalone elements
  that should track screen edges across resolutions.
- **Containers** (HBox/VBox/Grid/Margin/Tab/Split): a Container *takes over*
  positioning of its children — they give up manual placement. Use Containers for
  lists, menus, toolbars, anything that should flow and resize together. Nest
  them for complex layouts (the Godot editor itself is all containers).

The rule that confuses people: **a child of a Container can't be positioned
manually** — set its *sizing flags* (Fill/Expand/Shrink, Stretch Ratio) instead.
Full anchor/container model + the common node catalog is in
`references/controls_and_layout.md`.

## Wiring UI to C#

Control signals are C# events, same idiom as gameplay:

```csharp
GetNode<Button>("Start").Pressed += OnStart;
GetNode<HSlider>("Volume").ValueChanged += v => SetVolume((float)v);
GetNode<OptionButton>("Mode").ItemSelected += idx => GD.Print(idx);
GetNode<LineEdit>("Name").TextSubmitted += text => GD.Print(text);
```

Pushing game state into a HUD:

```csharp
GetNode<ProgressBar>("HealthBar").Value = hp;          // 0..MaxValue
GetNode<Label>("Score").Text = $"Score: {score}";
GetNode<TextureProgressBar>("Mana").Value = mana;
```

Full patterns (menus, pause screen, modal dialogs, focus/controller navigation
with `GrabFocus`/`FocusNeighbor`) are in `references/controls_and_layout.md`.

## Theming & skinning

A `Theme` resource defines default colors, fonts, font sizes, and `StyleBox`es
(panel/button backgrounds) for each Control type, project-wide or per-subtree.
Individual controls can override with theme overrides. Build a consistent look
once in a Theme rather than styling each node. Authoring themes, `StyleBoxFlat`
(rounded panels, borders), fonts, and the C# `AddThemeColorOverride` /
`AddThemeStyleboxOverride` calls are in `references/theming_and_i18n.md`.

## Responsive / multi-resolution

Set the project's stretch mode (`canvas_items` + `expand` aspect is the usual
choice for 2D UI) in `project.godot` under `[display]`. Then anchors + containers
handle the rest. The stretch settings and when to use `viewport` vs
`canvas_items` are in `references/controls_and_layout.md`.

## Localization (i18n)

Wrap user-facing strings so they translate. `Control.Text` set from a translation
key, `Tr("KEY")` in code (C# PascalCase — not lowercase `tr`), CSV/PO translation files registered in project
settings, and `TranslationServer.SetLocale("pt_BR")` to switch language. The
benchmark targets Simplified Chinese + Brazilian Portuguese — covered in
`references/theming_and_i18n.md`.

## Scaffolding

`scripts/new_screen.sh <projdir> <ScreenName>` writes a Control-rooted `.tscn`
(full-rect anchored) plus a matching `<ScreenName>.cs` Control script with signal
stubs, ready to fill in. Build with the project-setup `build_and_check.sh`.

## Verifying

UI C# compiles like any code. For "does the button actually fire / does the bar
update", drive it headlessly (`--quit-after`, emit the signal in code, assert on
state) or screenshot with `godot-qa-headless`. UI doesn't need a human to verify
logic — only to judge looks.

## Troubleshooting

`references/troubleshooting.md`: control invisible (zero size / behind another /
not under a CanvasLayer for HUD), can't position a child (it's in a Container —
use sizing flags), button click does nothing (signal not connected / mouse_filter
ignore / covered by an invisible control), UI doesn't scale (stretch mode unset),
text not translating (key missing from translation file / locale not set).
