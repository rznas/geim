# uGUI (Canvas + RectTransform) — for world-space & legacy UI

uGUI is Unity's older, component-based UI: GameObjects with a `Canvas`, child
`RectTransform`s, and `UnityEngine.UI.*` components (`Button`, `Image`, `Text` /
TextMeshPro, `Slider`, `Toggle`, `InputField`). **For new screen-space menus and
HUDs, prefer UI Toolkit** (`references/ui_toolkit.md`). Reach for uGUI when:

- the UI must live **in the 3D world** (a screen on an in-game monitor, a
  nameplate/health bar floating above an enemy in world space) — uGUI's
  `RenderMode.WorldSpace` is the mature path for this;
- you are extending an existing Canvas-based project;
- you need a uGUI-only third-party asset or component.

Doc-sourced from `api/` (Unity 6 / 6000.x), not compile-tested. Grep:
`Canvas.md`, `RectTransform.md`, `CanvasGroup.md`.

## The Canvas trio

Every uGUI UI lives under a `Canvas`. The verified setup from `api/Canvas.md`
(Unity's own example) builds the three components every screen-space Canvas needs:

```csharp
using UnityEngine;
using UnityEngine.UI;

var go = new GameObject("HUD");
var canvas = go.AddComponent<Canvas>();
canvas.renderMode = RenderMode.ScreenSpaceOverlay;
go.AddComponent<CanvasScaler>();      // resolution-independent scaling
go.AddComponent<GraphicRaycaster>();  // REQUIRED — without it clicks don't register
```

- **Canvas** — the render surface. Elements render *after* the scene.
- **CanvasScaler** — keeps UI sized sanely across resolutions; set its UI Scale
  Mode to **Scale With Screen Size** and a reference resolution (e.g.
  1920×1080) for most games.
- **GraphicRaycaster** — turns pointer rays into UI events. **No raycaster = no
  clicks.**

### Render modes (`Canvas.renderMode`)

| Mode | Use |
| --- | --- |
| `ScreenSpaceOverlay` | Drawn on top of everything, no camera needed. Default HUD/menu. |
| `ScreenSpaceCamera` | Rendered by a specific Camera at `planeDistance`; respects camera FX/order. |
| `WorldSpace` | The Canvas is a quad **in the 3D scene** — diegetic monitors, world-space nameplates. The reason to choose uGUI. |

## RectTransform & anchors

uGUI layout is the **RectTransform** (`api/RectTransform.md`) — the UI equivalent
of Transform. The mental model that trips everyone up: **anchors define a
reference rectangle in the parent; the element is then offset from it.**

- `anchorMin` / `anchorMax` — normalized positions in the parent (0,0 =
  bottom-left, 1,1 = top-right). When min == max the element is anchored to a
  *point*; when they differ it **stretches** between them.
- `anchoredPosition` — the pivot's offset from the anchor reference point.
- `sizeDelta` — size relative to the distance between anchors. When anchors are a
  point, `sizeDelta` is literally the width/height; when anchors stretch,
  `sizeDelta` is the *margin* added to the stretched size (set both to 0 to fill).
- `pivot` — the normalized point the element rotates/scales around and that
  `anchoredPosition` positions.
- `offsetMin` / `offsetMax` — the corner offsets from the anchors (an alternative
  to anchoredPosition+sizeDelta).

Common recipes:

```csharp
var rt = element.GetComponent<RectTransform>();

// Fill the parent (stretch on both axes, no margin):
rt.anchorMin = Vector2.zero;       // (0,0)
rt.anchorMax = Vector2.one;        // (1,1)
rt.offsetMin = Vector2.zero;
rt.offsetMax = Vector2.zero;

// Pin to top-right corner, fixed size:
rt.anchorMin = rt.anchorMax = new Vector2(1, 1);
rt.pivot = new Vector2(1, 1);
rt.anchoredPosition = new Vector2(-16, -16);   // 16px in from the corner
rt.sizeDelta = new Vector2(200, 50);
```

In the Inspector the anchor **preset** dropdown (Full Rect, Center, Bottom Wide,
etc.) sets these for you; the Inspector even changes which fields it shows based
on the preset (`api/RectTransform.md` note).

## Wiring uGUI controls to C#

uGUI controls expose **UnityEvents** (an invocation list you `AddListener` to) —
**not** C# events like UI Toolkit's `clicked`:

```csharp
using UnityEngine.UI;

GetComponent<Button>().onClick.AddListener(OnClick);                 // Button.onClick
GetComponent<Slider>().onValueChanged.AddListener(v => SetVol(v));   // float
GetComponent<Toggle>().onValueChanged.AddListener(b => Set(b));      // bool
GetComponent<InputField>().onEndEdit.AddListener(t => Submit(t));    // string
// TMP: GetComponent<TMPro.TMP_InputField>().onValueChanged ...
```

Push state into a HUD:

```csharp
healthSlider.value = hp;                       // 0..maxValue
scoreText.text = $"Score: {score}";            // UnityEngine.UI.Text or TMP_Text
```

## Showing / hiding & input blocking

`CanvasGroup` (`api/CanvasGroup.md`) is the clean way to fade/disable a whole
panel: `alpha` (fade), `interactable` (grey out controls), `blocksRaycasts`
(let clicks pass through when false). Set all three to hide a pause menu without
deactivating the GameObject.

## Requirements checklist (or nothing works)

1. A **Canvas** in the scene.
2. A **GraphicRaycaster** on that Canvas.
3. **Exactly one EventSystem** GameObject in the scene (Unity adds it when you
   create UI from the menu; in code it's a GameObject with an `EventSystem` +
   input module). Without it, no uGUI input is processed at all.
4. The control's `Image`/`Graphic` has **Raycast Target** enabled, and nothing
   transparent-but-raycastable is covering it.

See `references/troubleshooting.md` for the "button does nothing" decision tree.
