<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Overlays.DockZone.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

DockZone describes the area of the screen that an Overlay is displayed in.

Use DockZone in an OverlayAttribute to set the default location for an Overlay.

```csharp
using UnityEditor;
using UnityEditor.Overlays;
using UnityEngine;
using UnityEngine.UIElements;// Use OverlayAttribute to specify that in new Scene Views, when this Overlay is first opened it will be in the
// top toolbar, aligned to the left side.
[Overlay(typeof(SceneView), "Docked Top Toolbar, Left Aligned", defaultDockZone = DockZone.TopToolbar, defaultDockPosition = DockPosition.Top)]
class MyOverlay : Overlay
{
    public override VisualElement CreatePanelContent() => new Label("Overlay Contents");
}
```

### Properties

| Property | Description |
| --- | --- |
| LeftToolbar | Overlays are displayed in the left toolbar. |
| RightToolbar | Overlays are displayed in the right toolbar. |
| TopToolbar | Overlays are displayed in the top toolbar. |
| BottomToolbar | Overlays are displayed in the bottom toolbar. |
| LeftColumn | Overlays are displayed in the left column. |
| RightColumn | Overlays are displayed in the right column. |
| Floating | Overlays are not bound to a toolbar or column. |
| LeftDynamicPanel | Overlays are displayed in the left full-height dynamic panel. |
| RightDynamicPanel | Overlays are displayed in the right full-height dynamic panel. |
