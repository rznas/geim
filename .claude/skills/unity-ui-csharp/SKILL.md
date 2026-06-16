---
name: unity-ui-csharp
description: >
  Build user interfaces — menus, HUDs, dialogs, settings screens, pause menus —
  for a Unity 6 (6000.x) C# game. UI Toolkit (UIDocument + UXML markup + USS
  styles, queried from C# with root.Q<Button>("name").clicked += ...) is the
  primary path; uGUI (Canvas + RectTransform + MonoBehaviour components) is
  covered for world-space/3D and legacy UI. Use this whenever you are creating a
  main menu, HUD (health bar, score, ammo), settings screen with sliders/toggles,
  modal dialog, pause screen, inventory grid, or any on-screen interface; wiring a
  button/slider/toggle to C#; laying out a screen with flexbox (UI Toolkit) or
  anchors (uGUI); styling UI with USS or theming uGUI; data-binding UI to game
  state; or localizing UI text. Reach for it any time the task is "make a main
  menu", "add a health bar", "settings with a volume slider", "the button does
  nothing", "Q returned null", "my USS isn't applying", "world-space UI on a
  monitor in the scene", "translate the menu", or "should I use UI Toolkit or
  Canvas". It has the verified UIDocument/Q/clicked idiom, the uGUI Canvas/anchor
  model, and the localization API. Covers UI/UX Artist and Technical Designer
  work. Assumes a buildable project (unity-project-setup).
---

# Unity UI in C# (UI Toolkit primary)

Unity 6 ships **two unrelated UI systems**. Pick one per screen — do not mix them
on the same surface.

- **UI Toolkit** (the strategic default for screens/menus/settings/HUDs): a
  retained-mode tree of `VisualElement`s, defined in **UXML** markup, styled with
  **USS** (CSS-like), driven from C# through a `UIDocument` component. Resolution
  independence comes from flexbox layout. This is what new projects should reach
  for first.
- **uGUI** (still the right tool for world-space / 3D-diegetic UI and legacy
  scenes): `Canvas` + `RectTransform` + `MonoBehaviour` components
  (`UnityEngine.UI.Button`, `Image`, `Text`/TextMeshPro). Laid out with
  **anchors**. Use it when the UI must live in the 3D world (a screen on an
  in-game monitor, a floating health bar in world space) or when extending an
  existing Canvas project.

## The one thing that trips everyone up

**There are two UI systems and beginners cross the wires.** The single biggest
failure mode in Unity UI:

1. **Wrong system / mixed APIs.** `UnityEngine.UIElements.Button` (UI Toolkit)
   and `UnityEngine.UI.Button` (uGUI) are different classes with different events
   — `button.clicked +=` for UI Toolkit, `button.onClick.AddListener(...)` for
   uGUI. They do not interoperate. A `Canvas` has nothing to do with a
   `UIDocument`.
2. **Querying UI Toolkit elements before the document loads.** A `UIDocument`
   builds its visual tree from the assigned UXML, then exposes it as
   `rootVisualElement`. You must query **after** that — in `OnEnable` — or `Q<T>`
   returns `null`. Elements are also styled by **USS**, *not* the Inspector; the
   Inspector has almost nothing for a `VisualElement`.

The verified idiom (from `references/api/UIElements.UIDocument.md`, Unity's own
example):

```csharp
using UnityEngine;
using UnityEngine.UIElements;

[RequireComponent(typeof(UIDocument))]
public class MainMenu : MonoBehaviour
{
    void OnEnable()  // OnEnable: rootVisualElement is populated by now
    {
        var root = GetComponent<UIDocument>().rootVisualElement;
        var button = root.Q<Button>("play-button");   // name from the UXML
        button.clicked += OnPlay;                      // NOT onClick
    }

    void OnPlay() => Debug.Log("Play");
}
```

If `Q<Button>("play-button")` is null: you queried too early (do it in
`OnEnable`, not `Awake`/the constructor), or the name in the UXML does not match
the string, or the `.uxml` is not assigned as the UIDocument's Source Asset. See
`references/troubleshooting.md`.

## UI Toolkit workflow: UXML + USS + C#

Three layers, one screen:

**1. UXML** — the structure. Element names are how C# finds them.

```xml
<ui:UXML xmlns:ui="UnityEngine.UIElements">
    <Style src="MainMenu.uss" />               <!-- link the stylesheet -->
    <ui:VisualElement name="root" class="screen">
        <ui:Label  name="title-label" text="My Game" class="title" />
        <ui:Button name="play-button" text="Play"   class="menu-button" />
        <ui:Button name="quit-button" text="Quit"   class="menu-button" />
    </ui:VisualElement>
</ui:UXML>
```

**2. USS** — the look. Selectors: `.class`, `#name`, or by type (`Button`).
Layout is flexbox (`flex-grow`, `align-items`, `justify-content`), not anchors.

```css
.screen { flex-grow: 1; align-items: center; justify-content: center; }
.menu-button { width: 220px; height: 48px; margin: 6px; }
.menu-button:hover { background-color: rgb(72, 72, 84); }
```

**3. C#** — the behaviour. `root.Q<T>("name")` to find, then events.

```csharp
// Wiring controls (verified signatures, references/api/):
root.Q<Button>("play-button").clicked += OnPlay;                          // Button.clicked
root.Q<Toggle>("fullscreen").RegisterValueChangedCallback(e => Set(e.newValue));
root.Q<Slider>("volume").RegisterValueChangedCallback(e => SetVol(e.newValue));
root.Q<Label>("score").text = $"Score: {score}";                          // push state into a HUD
```

`Q<T>` is shorthand for `Query<T>().Build().First()`
(`references/api/UIElements.UQueryExtensions.md`). For value-bearing controls
(Slider/Toggle/TextField) use `RegisterValueChangedCallback`, which receives a
`ChangeEvent<T>` with `.newValue`/`.previousValue`
(`references/api/UIElements.INotifyValueChangedExtensions.RegisterValueChangedCallback.md`).
Full element catalog, UQuery selectors, event propagation (TrickleDown/BubbleUp),
and `CloneTree` for instantiating sub-templates are in
`references/ui_toolkit.md`.

A `UIDocument` needs a **PanelSettings** asset (one per panel/sort layer) and a
**Source Asset** (`.uxml`) assigned in the Inspector. `scripts/new_ui_toolkit_screen.sh`
scaffolds the `.uxml` + `.uss` + controller `.cs` for you.

## uGUI (Canvas / anchors) — brief, for world-space & legacy

A uGUI screen is `Canvas` → child `RectTransform`s holding
`UnityEngine.UI.*` components. Verified pattern from
`references/api/Canvas.md`:

```csharp
using UnityEngine;
using UnityEngine.UI;
var go = new GameObject("HUD");
var canvas = go.AddComponent<Canvas>();
canvas.renderMode = RenderMode.ScreenSpaceOverlay;   // or WorldSpace for 3D UI
go.AddComponent<CanvasScaler>();                      // resolution scaling
go.AddComponent<GraphicRaycaster>();                  // makes clicks register
```

Layout is **anchors** on the `RectTransform`: `anchorMin`/`anchorMax` are
normalized parent positions (0,0 = bottom-left, 1,1 = top-right);
`anchoredPosition`, `sizeDelta`, and `pivot` finish placement
(`references/api/RectTransform.md`). Buttons use the event list, not a C# event:
`GetComponent<Button>().onClick.AddListener(OnClick)`. Two requirements that bite
everyone: the scene needs an **EventSystem** GameObject and the Canvas needs a
**GraphicRaycaster**, or no clicks register. Full anchor model, render modes
(Overlay/Camera/WorldSpace), and CanvasScaler reference resolution are in
`references/ugui.md`.

## Localization (zh-Hans + pt-BR per benchmark)

Don't hardcode user-facing strings. The Unity **Localization** package (string
tables keyed per locale) drives both UI systems. The project benchmark targets
**Simplified Chinese (zh-Hans)** and **Brazilian Portuguese (pt-BR)** (~30%
revenue uplift each). For UI Toolkit, bind a `Label` to a localized string; for
uGUI, use a `LocalizeStringEvent` on the text component. Setup, string tables,
locale switching, and CJK font fallback are in `references/localization.md`.

## Verifying

These snippets are **doc-sourced from the embedded Unity 6 ScriptReference
(`references/api/`) and compile-verified against Unity 6000.4.10f1** — the
`new_ui_toolkit_screen.sh` controller (`root.Q<Button>(...).clicked += …`)
compiles clean headless. For "does the button actually fire / does the bar
update", verify against a live build with the sibling `unity-qa-testing` skill
(PlayMode tests can query the
`rootVisualElement` and assert on `Label.text`); logic doesn't need a human, only
looks do.

## What this covers / hands off to

Covers UI/UX Artist and Technical Designer implementation work: screens, HUDs,
menus, dialogs, settings, theming, layout, data display, and UI localization.

- Project scaffold, `.csproj`, build → **unity-project-setup**
- Game logic the UI reads/drives, scene tree, input → **unity-gameplay-csharp**
- Custom shaders/materials behind fancy UI fills → **unity-graphics-shaders**
- Verifying UI behaviour headlessly / PlayMode tests → **unity-qa-testing**
- Packaging the build → **unity-build-deploy**

Depth lives in `references/`:
- `references/ui_toolkit.md` — UXML/USS/C#, VisualElement, UQuery, UIDocument, events, data binding
- `references/ugui.md` — Canvas, RectTransform anchors, render modes, onClick (world-space/legacy)
- `references/localization.md` — Unity Localization, string tables, zh-Hans + pt-BR, CJK fonts
- `references/troubleshooting.md` — Q null, USS not applying, uGUI no-click, two-system confusion, anchor surprises
- `references/api/` — exhaustive embedded ScriptReference pages (source of truth — grep it)
