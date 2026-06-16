<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Overlays.Overlay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Overlays are persistent and customizable panels and toolbars that are available within Editor Windows. Use Overlays to expose actions and tool options in a convenient and user-controllable way.

This is the base class that all overlays inherit from. To create an overlay, return a UnityEngine.UIElements.VisualElement.

The simplest way to display an overlay is to use OverlayAttribute and register a target EditorWindow.

```csharp
using UnityEditor;
using UnityEditor.Overlays;
using UnityEngine.UIElements;// Specifying `OverlayAttribute.editorWindowType` tells the OverlayCanvas to always show this Overlay in the menu.
[Overlay(typeof(SceneView), "Selection Count")]
class SelectionCount : Overlay
{
    Label m_Label;    public override VisualElement CreatePanelContent()
    {
        Selection.selectionChanged += () =>
        {
            if (m_Label != null)
                m_Label.text = $"Selection Count {Selection.count}";
        };        return m_Label = new Label($"Selection Count {Selection.count}");
    }
}
```

Overlays can be used in any EditorWindow that implements ISupportsOverlays. You can use OverlayCanvas.Add and OverlayCanvas.Remove to add and remove overlays from the Overlays menu.

```csharp
using System;
using UnityEditor;
using UnityEditor.Overlays;
using UnityEngine;
using UnityEngine.UIElements;public class OverlayWindowExample : EditorWindow, ISupportsOverlays
{
    bool m_ShowOverlay;
    InstanceOverlay m_Overlay;    // InstanceOverlay is not registered as a persistent overlay, and it must be instantiated through code. In contrast,
    // PersistentOverlay is registered with a target window type and will be available at any time.
    // All OverlayAttribute properties are optional. Here, we specify that when this overlay is added to a window for the
    // first time, so it is visible by default. If defaultDisplay is set to it's default value of false, the
    // Overlay will be available in the Overlay Menu when added to a window, but not visible.
    [Overlay(defaultDisplay = true)]
    class InstanceOverlay : Overlay
    {
        OverlayWindowExample m_Window;
        public InstanceOverlay(OverlayWindowExample win) => m_Window = win;
        public override VisualElement CreatePanelContent() => new Label() { text = $"Hello from {m_Window.name}!" };
    }    // Persistent overlays are always available in the Overlay Menu. An Overlay is made persistent by assigning the
    // `editorWindowType` property in `OverlayAttribute`.
    [Overlay(typeof(OverlayWindowExample), "Persistent Overlay", defaultDisplay = true)]
    class PersistentOverlay : Overlay
    {
        public override VisualElement CreatePanelContent() => new Label() { text = "Hello, I'm always available!" };
    }    [MenuItem("Window/Overlay Window")]
    static void Init() => GetWindow<OverlayWindowExample>();    void OnEnable() => m_Overlay = new InstanceOverlay(this);    void OnGUI()
    {
        EditorGUI.BeginChangeCheck();
        m_ShowOverlay = EditorGUILayout.Toggle("Show Overlay", m_ShowOverlay);
        if (EditorGUI.EndChangeCheck())
        {
            if (m_ShowOverlay)
                overlayCanvas.Add(m_Overlay);
            else
                overlayCanvas.Remove(m_Overlay);
        }
    }
}
```

Overlays can be shown in the active SceneView through SceneView.AddOverlayToActiveView and SceneView.RemoveOverlayFromActiveView. This is useful for EditorTools that need to show UI.

```csharp
using System.Linq;
using UnityEngine;
using UnityEditor;
using UnityEditor.EditorTools;
using UnityEditor.Overlays;
using UnityEngine.UIElements;// A simple tool that moves the selected transforms using an Overlay interface.
[EditorTool("Offset", typeof(Transform))]
public class OffsetTool : EditorTool
{
    // By default, overlays added to the canvas are not displayed. Setting the `defaultDisplay` property ensures that the
    // first time this Overlay is added to a canvas it will be visible.
    [Overlay(defaultDisplay = true)]
    class OffsetToolOverlay : Overlay
    {
        Transform[] selection;        public OffsetToolOverlay(Transform[] targets) => selection = targets;        public override VisualElement CreatePanelContent()
        {
            var root = new VisualElement();
            root.Add(new Button(() => Move(Vector3.right)) { text = "Move Right" });
            root.Add(new Button(() => Move(Vector3.up)) { text = "Move Up" });
            root.Add(new Button(() => Move(Vector3.forward)) { text = "Move Forward" });
            return root;
        }        void Move(Vector3 direction)
        {
            Undo.RecordObjects(selection, "Move Selection");
            foreach (var transform in selection)
                transform.position += direction;
        }
    }    OffsetToolOverlay m_Overlay;    public override void OnActivated()
    {
        SceneView.AddOverlayToActiveView(m_Overlay = new OffsetToolOverlay(targets.Select(x => x as Transform).ToArray()));
    }    public override void OnWillBeDeactivated()
    {
        SceneView.RemoveOverlayFromActiveView(m_Overlay);
    }
}
```

To create an Overlay that is dockable in a toolbar, see ToolbarOverlay.

### Static Properties

| Property | Description |
| --- | --- |
| ussClassName | USS class name of elements of this type. |

### Properties

| Property | Description |
| --- | --- |
| collapsed | Defines whether the overlay is in collapsed form. |
| collapsedIcon | Defines a custom icon to use when that overlay is in collapsed form. |
| containerWindow | EditorWindow the overlay is contained within. |
| defaultSize | Set defaultSize to define the size of an Overlay when it hasn't been resized by the user. |
| displayed | Shows or hides the overlay. |
| displayName | Name of overlay used as title. |
| floating | Returns true if overlay is floating, returns false if overlay is docked in a corner or in a toolbar. |
| floatingPosition | Local position of closest overlay corner to closest dockposition when floating. |
| id | Overlay unique ID. |
| isInToolbar | Returns true if overlay is docked in a toolbar. |
| layout | The preferred layout for the Overlay. |
| maxSize | Maximum size of the Overlay. |
| minSize | Minimum size of the Overlay. |
| rootVisualElement | The root VisualElement. |
| size | Size of the Overlay. |

### Public Methods

| Method | Description |
| --- | --- |
| Close | Remove the Overlay from its OverlayCanvas. |
| CreateContent | Creates a new VisualElement containing the contents of this Overlay. |
| CreatePanelContent | Implement this method to return your visual element content. |
| OnCreated | OnCreated is invoked when an Overlay is instantiated in an Overlay Canvas. |
| OnWillBeDestroyed | Called when an Overlay is about to be destroyed. |
| RefreshPopup | Resize the OverlayPopup to fit the content. |
| Undock | If this Overlay is currently in a toolbar, it will be removed and return to a floating state. |

### Events

| Event | Description |
| --- | --- |
| collapsedChanged | Invoked when Overlay.collapsed value is changed. |
| displayedChanged | This callback is invoked when the Overlay.displayed value has been changed. |
| floatingChanged | Called when the value of floating has changed. |
| floatingPositionChanged | This event is invoked when Overlay.floatingPosition is changed. |
| layoutChanged | Subscribe to this event to be notified when the Overlay.Layout property is modified. |
