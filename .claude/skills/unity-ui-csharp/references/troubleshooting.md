# Unity UI troubleshooting — the handful that account for most failures

Doc-sourced from `api/` (Unity 6 / 6000.x), not compile-tested. Symptoms first.

---

## "I can't tell which UI system I'm in" (the root confusion)

Unity has **two unrelated UI systems**. Mixing their APIs is the #1 source of
"why doesn't this compile / fire".

| | UI Toolkit (primary) | uGUI (world-space/legacy) |
| --- | --- | --- |
| Host | `UIDocument` component + PanelSettings | `Canvas` GameObject |
| Element | `VisualElement` (Button = `UnityEngine.UIElements.Button`) | `UnityEngine.UI.Button` on a GameObject |
| Find in C# | `root.Q<Button>("name")` | `GetComponent<Button>()` / `transform.Find` |
| Button event | `button.clicked += OnClick;` | `button.onClick.AddListener(OnClick);` |
| Layout | flexbox in **USS** | anchors on **RectTransform** |
| Style | USS stylesheet | Inspector + Image/StyleBox |
| Defined in | `.uxml` | scene hierarchy |

If `using UnityEngine.UIElements;` and `using UnityEngine.UI;` are both imported
and you reference `Button`, the compiler complains of an ambiguous reference —
that's the smell you've crossed the systems. Pick one per screen.

---

## UI Toolkit: `Q<T>("name")` returns null / NullReferenceException

The most common UI Toolkit bug. Causes, in order of likelihood:

1. **Queried before the document loaded.** `rootVisualElement` is only populated
   after the UIDocument builds its tree. Query in **`OnEnable`**, not `Awake`,
   the constructor, or a field initializer. (`api/UIElements.UIDocument.md`
   queries in `OnEnable`.)
2. **Name mismatch.** `Q<Button>("play-button")` must match the UXML `name=`
   attribute **exactly** — case-sensitive, hyphens and all.
3. **No Source Asset assigned.** The UIDocument's *Source Asset* (`.uxml`) field
   is empty, so `rootVisualElement` has no children.
4. **Wrong type.** `Q<Button>("x")` where `x` is actually a `Label` returns null.
   Query the real type, or `Q<VisualElement>("x")` for any type.
5. **Querying the wrong root.** You searched a sub-element's subtree that doesn't
   contain the target. Query from `rootVisualElement` (or the correct parent).

Guard against it: `var b = root.Q<Button>("play"); if (b == null) { Debug.LogError("…"); return; }`

---

## UI Toolkit: my USS isn't applying

1. **Stylesheet not linked.** The `.uxml` must reference it:
   `<Style src="MyScreen.uss" />` (or assign it on the element / PanelSettings
   theme). No link = default styling.
2. **Selector doesn't match.** `.menu-button` matches a `class="menu-button"`;
   `#play` matches `name="play"`; `Button` matches by type. A typo or a `.`/`#`
   mixup silently matches nothing.
3. **Specificity / override.** An **inline** style set in C# (`ve.style.width =
   ...`) beats a USS rule. Setting layout via `style.*` in code overrides the
   sheet — intentional, but surprising.
4. **Class not actually on the element.** Confirm with
   `ve.ClassListContains("menu-button")`; add via `AddToClassList`.
5. **Unity-prefixed property typo.** Unity extensions are prefixed
   (`-unity-text-align`, `-unity-font-style`). Plain CSS names (`text-align`)
   don't exist in USS.

---

## uGUI: button (or any control) does nothing on click

Walk this checklist (any one missing kills input):

1. **No EventSystem in the scene.** uGUI needs exactly one EventSystem GameObject
   to process input. Creating any UI from the GameObject menu adds it; a
   code-built UI must add it explicitly. No EventSystem = nothing is clickable.
2. **No GraphicRaycaster on the Canvas.** Required to turn pointer rays into UI
   events (`api/Canvas.md` example adds it alongside Canvas + CanvasScaler).
3. **Raycast Target off.** The button's `Image`/`Graphic` has *Raycast Target*
   unchecked, so the ray passes through.
4. **Something is covering it.** A larger transparent Image/Panel with Raycast
   Target on sits on top and eats the click. Disable its Raycast Target or
   reorder.
5. **CanvasGroup blocking.** A parent `CanvasGroup` with `interactable = false`
   or `blocksRaycasts = false` disables the subtree (`api/CanvasGroup.md`).
6. **Listener not added / added to the wrong instance.**
   `GetComponent<Button>().onClick.AddListener(OnClick)` — confirm it ran and on
   the right object.

---

## uGUI: RectTransform anchor surprises

1. **Element off-screen / wrong size after re-anchoring.** Anchors define a
   reference rect; `sizeDelta`/`anchoredPosition` are *relative to it*. When
   anchors **stretch** (min ≠ max), `sizeDelta` is a **margin**, not an absolute
   size — set `offsetMin`/`offsetMax` to 0 to truly fill the parent.
2. **Moves wrong direction when repositioned.** `anchoredPosition` is measured
   from the **pivot** relative to the anchor. Top-right pinning needs `pivot` and
   `anchorMin/Max` both at (1,1), then a **negative** offset to move inward.
3. **Doesn't scale across resolutions.** Set the **CanvasScaler** to *Scale With
   Screen Size* + a reference resolution; with the default *Constant Pixel Size*
   the UI is a fixed pixel size on every screen.
4. **Inspector fields keep changing.** The RectTransform Inspector swaps which
   fields it shows based on the active anchor preset
   (`api/RectTransform.md` note) — not a bug.

---

## Control invisible / zero-size

- **UI Toolkit**: a `VisualElement` with no `flex-grow`, no explicit
  width/height, and no content collapses to zero size. Give the root
  `flex-grow: 1` or set sizes. Also check `style.display != DisplayStyle.None`
  and `visible == true`.
- **uGUI**: zero `sizeDelta` with point anchors = invisible; behind another
  element in sibling/sort order; or its Canvas has `enabled = false`.

---

## Text shows as boxes (□□□) for Chinese

The font has no CJK glyphs. Supply a CJK-capable font with **fallback** — see
`references/localization.md` ("CJK fonts"). Use a **dynamic** TMP font asset for
uGUI (the full Chinese atlas is enormous); set a font fallback chain in
USS/PanelSettings for UI Toolkit.

---

## Nothing renders at all (UI Toolkit)

- UIDocument has **no PanelSettings** assigned → nothing to render into.
- The Source Asset `.uxml` is empty or failed to import
  (`VisualTreeAsset.importedWithErrors` — `api/UIElements.VisualTreeAsset-importedWithErrors.md`).
- The GameObject (or its UIDocument component) is disabled, so `OnEnable` never
  ran and the tree was never built.
