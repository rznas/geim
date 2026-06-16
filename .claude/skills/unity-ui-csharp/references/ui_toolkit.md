# UI Toolkit (UXML + USS + C#) — the primary UI path

UI Toolkit is Unity 6's retained-mode UI: a tree of **VisualElement**s defined in
**UXML**, styled with **USS**, hosted at runtime by a **UIDocument** component,
and driven from C# via **UQuery** (`root.Q<T>(...)`). This is the strategic
default for menus, settings, HUDs, and dialogs.

All idioms below are grounded in the embedded ScriptReference under
`api/`. Doc-sourced, not compile-tested (no Editor installed). Grep `api/` for
exact signatures: `UIElements.VisualElement.md`, `UIElements.Button.md`,
`UIElements.Label.md`, `UIElements.UQueryExtensions.md`,
`UIElements.UIDocument.md`, `UIElements.VisualTreeAsset.md`,
`UIElements.INotifyValueChangedExtensions.RegisterValueChangedCallback.md`.

## The three layers

| Layer | File | Role | Authored by |
| --- | --- | --- | --- |
| Structure | `.uxml` | The element tree + names | UI Builder or hand |
| Style | `.uss` | Appearance + flexbox layout | hand / UI Builder |
| Behaviour | `.cs` | Query + events + state | C# |

Elements are **NOT** configured in the Inspector the way uGUI components are. A
`VisualElement` exposes almost nothing in the Inspector; you style it in USS and
script it in C#.

## UXML — structure

```xml
<?xml version="1.0" encoding="utf-8"?>
<ui:UXML xmlns:ui="UnityEngine.UIElements">
    <Style src="MainMenu.uss" />               <!-- link a stylesheet -->
    <ui:VisualElement name="root" class="screen">
        <ui:Label  name="title-label" text="My Game" class="title" />
        <ui:Button name="play-button" text="Play"   class="menu-button" />
        <ui:Toggle name="fullscreen"  label="Fullscreen" />
        <ui:Slider name="volume" low-value="0" high-value="1" />
        <ui:ScrollView name="list">
            <!-- rows ... -->
        </ui:ScrollView>
    </ui:VisualElement>
</ui:UXML>
```

- `name` is how C# finds an element (`Q<T>("name")`); it should be unique enough
  within the queried subtree.
- `class` attaches one or more USS classes (space-separated), like CSS.
- UXML attributes are hyphenated (`low-value`); the C# property is camelCase
  (`lowValue`).
- A `<ui:Template>` + `<ui:Instance>` lets you reuse sub-trees; or clone in C#
  (see CloneTree below).

## USS — style + layout (flexbox, not anchors)

USS is CSS-like but Unity-specific. Layout is **flexbox** — there are no anchors
in UI Toolkit. Common properties:

```css
/* Selectors: .class  |  #name  |  Type (e.g. Button)  |  pseudo (:hover :active) */
.screen {
    flex-grow: 1;                 /* fill the parent */
    flex-direction: column;       /* row | column (default column) */
    align-items: center;          /* cross-axis */
    justify-content: center;      /* main-axis */
    background-color: rgb(24,24,28);
}
.menu-button {
    width: 220px; height: 48px;
    margin: 6px; padding: 4px;
    border-radius: 6px; border-width: 0;
    -unity-text-align: middle-center;   /* Unity-prefixed extensions */
    -unity-font-style: bold;
}
.menu-button:hover { background-color: rgb(72,72,84); }
.hidden { display: none; }              /* toggle visibility via class */
```

Resolution independence comes from flexbox + percentage/auto sizing, plus the
**PanelSettings** scale mode (Constant Pixel Size / Scale With Screen Size /
Constant Physical Size) — the UI Toolkit analogue of uGUI's CanvasScaler.

## UIDocument — hosting the UI at runtime

A `UIDocument` component (`api/UIElements.UIDocument.md`) connects VisualElements
to a GameObject so they render in the Game view. In the Inspector it needs:

- **Panel Settings** — a `PanelSettings` asset (render order, scale mode, theme).
  Multiple UIDocuments can share one PanelSettings; `sortingOrder` orders them.
- **Source Asset** — the `.uxml` whose tree becomes `rootVisualElement`.

`rootVisualElement` is the root of the loaded tree. It is populated by the time
`OnEnable` runs — **this is why you query in `OnEnable`, not `Awake` or the
constructor.**

## C# — query + events + state (verified idioms)

Unity's own UIDocument example (`api/UIElements.UIDocument.md`):

```csharp
using UnityEngine;
using UnityEngine.UIElements;

[RequireComponent(typeof(UIDocument))]
public class MainMenu : MonoBehaviour
{
    void OnEnable()
    {
        var root = GetComponent<UIDocument>().rootVisualElement;

        // Find by name. Q<T> = Query<T>().Build().First() (api/UIElements.UQueryExtensions.md)
        var play  = root.Q<Button>("play-button");
        var vol    = root.Q<Slider>("volume");
        var full   = root.Q<Toggle>("fullscreen");
        var score  = root.Q<Label>("title-label");

        // Button: the 'clicked' event (api/UIElements.Button.md). NOT onClick (obsolete).
        play.clicked += () => Debug.Log("Play");

        // Value controls: RegisterValueChangedCallback gives a ChangeEvent<T>
        // with .newValue / .previousValue
        // (api/UIElements.INotifyValueChangedExtensions.RegisterValueChangedCallback.md).
        vol.RegisterValueChangedCallback(e  => SetVolume(e.newValue));   // float (Slider holds float)
        full.RegisterValueChangedCallback(e => SetFullscreen(e.newValue)); // bool

        // Push state into a Label
        score.text = "Score: 0";
    }

    void SetVolume(float v) { }
    void SetFullscreen(bool b) { }
}
```

### UQuery in depth

- `root.Q<Button>("name")` — first Button named "name" in the subtree; **null if
  not found** (the #1 bug — see troubleshooting).
- `root.Q<Button>(className: "menu-button")` — first by USS class.
- `root.Query<Button>().ForEach(b => b.SetEnabled(false))` — operate on all
  matches (`api/UIElements.UQueryBuilder_1.*` for `.Class`, `.Name`, `.Where`,
  `.AtIndex`, `.First`, `.Build`).
- `Q<T>` is literally `Query<T>().Build().First()`
  (`api/UIElements.UQueryExtensions.md`).

### Common VisualElement operations (from `api/UIElements.VisualElement.md`)

```csharp
ve.AddToClassList("active");        ve.RemoveFromClassList("active");
ve.EnableInClassList("hidden", hide);   // add/remove based on a bool
ve.ToggleInClassList("open");
ve.SetEnabled(false);               // disable (greys out, blocks most events)
ve.style.display = DisplayStyle.None;   // hide via inline style
ve.Add(child); ve.Clear();          // mutate the tree
ve.RegisterCallback<ClickEvent>(evt => { });   // low-level events
```

### Events: clicked vs callbacks

- `Button.clicked` (an `Action`) is the simple "button pressed" event.
- `RegisterCallback<TEvent>(...)` handles low-level events
  (`ClickEvent`, `PointerDownEvent`, `KeyDownEvent`, `ChangeEvent<T>`, …). These
  **propagate** through the tree in two phases — TrickleDown (root→target) then
  BubbleUp (target→root); call `evt.StopPropagation()` to halt. `evt.target` is
  the originating element, `evt.currentTarget` is where the handler is registered.
- Always `-=` / `UnregisterCallback` in `OnDisable` so re-enabling the document
  doesn't double-wire.

### Instantiating sub-templates (lists, repeated rows)

`VisualTreeAsset.CloneTree()` (`api/UIElements.VisualTreeAsset.CloneTree.md`)
returns a `TemplateContainer` you can add to the tree — the manual way to build a
list of rows from a row template. For large data-driven lists, prefer the
built-in **ListView** (`api/UIElements.ListView.md`) which virtualizes rows via
`makeItem` / `bindItem` delegates.

```csharp
[SerializeField] VisualTreeAsset rowTemplate;   // assign the row .uxml in Inspector
...
foreach (var item in items)
{
    TemplateContainer row = rowTemplate.CloneTree();
    row.Q<Label>("name").text = item.Name;
    listContainer.Add(row);
}
```

## Data binding

UI Toolkit supports runtime data binding so a control reflects a source property
automatically. `SetBinding`, `dataSource`, `dataSourcePath`, and `bindingPath`
are on every VisualElement (`api/UIElements.VisualElement.md` /
`UIElements.Button.md`). For most gameplay HUDs, manually pushing values
(`label.text = ...` each frame or on change) is simpler and entirely fine; reach
for bindings when wiring a settings panel to a config object. `NotifyPropertyChanged`
informs the binding system a source property changed.

## Scaffolding

`scripts/new_ui_toolkit_screen.sh <projectDir> <ScreenName>` writes a matched
`.uxml` (title + two buttons + status label), `.uss` (basic flexbox styling), and
controller `.cs` (queries in `OnEnable`, wires `clicked`, unwires in
`OnDisable`). Then in the Editor: add a UIDocument to a GameObject, assign a
PanelSettings + the `.uxml`, and add the `.cs` to the same GameObject.
