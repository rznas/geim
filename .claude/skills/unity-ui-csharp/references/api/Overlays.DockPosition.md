<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Overlays.DockPosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

DockPosition describes the alignment of an Overlay within a DockZone.

Use DockPosition in an OverlayAttribute to set the default location for an Overlay.

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
| Top | The Overlay will be aligned to the top or left of the DockZone. |
| Bottom | The Overlay will be aligned to the bottom or right of the DockZone. |
