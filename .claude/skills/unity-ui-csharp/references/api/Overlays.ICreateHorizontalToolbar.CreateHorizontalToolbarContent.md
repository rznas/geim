<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Overlays.ICreateHorizontalToolbar.CreateHorizontalToolbarContent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**OverlayToolbar** The content of your overlay in horizontal toolbar layout form.

### Description

Implement this to return your visual element representing the horizontal toolbar layout of your overlay.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Overlays;
using UnityEditor.Toolbars;
using UnityEngine;
using UnityEngine.UIElements;

[Overlay(typeof(SceneView), "Custom Toolbar Overlay")]
class CustomOverlay : Overlay, ICreateHorizontalToolbar, ICreateVerticalToolbar
{
    public override VisualElement CreatePanelContent()
    {
        return new Label("I'm the content shown in panel mode!");
    }

    // Setup horizontal layout to only have CustomToolbarItem visual element.
    public OverlayToolbar CreateHorizontalToolbarContent()
    {
        var horizontalOverlayToolbar = new OverlayToolbar();
        horizontalOverlayToolbar.Add(new CustomToolbarItem());

        return horizontalOverlayToolbar;
    }

    // Setup vertical layout to only have OtherToolbarItem visual element.
    public OverlayToolbar CreateVerticalToolbarContent()
    {
        var verticalOverlayToolbar = new OverlayToolbar();
        verticalOverlayToolbar.Add(new OtherToolbarItem());

        return verticalOverlayToolbar;
    }
}

[EditorToolbarElement("SomeOtherToolbarItem", typeof(SceneView))]
class OtherToolbarItem : EditorToolbarToggle
{
    public OtherToolbarItem()
    {
        icon = EditorGUIUtility.FindTexture("CustomTool");
    }
}

[EditorToolbarElement("MyToolbarItem", typeof(SceneView))]
class CustomToolbarItem : OverlayToolbar
{
    public CustomToolbarItem()
    {
        var icon = AssetDatabase.LoadAssetAtPath<Texture2D>("MyIcon");
        Add(new EditorToolbarButton(icon, () => { Debug.Log("Hello!"); }));
        Add(new EditorToolbarButton(icon, () => { Debug.Log("Hello again!"); }));
        SetupChildrenAsButtonStrip();
    }
}
```
