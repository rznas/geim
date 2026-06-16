<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Overlays.ICreateToolbar-toolbarElements.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

List of toolbarElements IDs to show when the Overlay is in a toolbar layout.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Overlays;
using UnityEditor.Toolbars;
using UnityEngine;
using UnityEngine.UIElements;

[Overlay(typeof(SceneView), "My Toolbar Overlay")]
class MyOverlay : Overlay, ICreateToolbar
{
    public override VisualElement CreatePanelContent()
    {
        return new Label("I'm the content shown in panel mode!");
    }

    public IEnumerable<string> toolbarElements
    {
        get
        {
            yield return MyToolbarItem.id;
            yield return SomeOtherToolbarItem.id;
        }
    }
}

[EditorToolbarElement(id, typeof(SceneView))]
class SomeOtherToolbarItem : EditorToolbarToggle
{
    public const string id = "SomeOtherToolbarItem";

    public SomeOtherToolbarItem()
    {
        icon = EditorGUIUtility.FindTexture("CustomTool");
    }
}

// Example toolbar element with multiple controls
[EditorToolbarElement(id, typeof(SceneView))]
class MyToolbarItem : OverlayToolbar
{
    public const string id = "MyToolbarItem";

    public MyToolbarItem()
    {
        var icon = AssetDatabase.LoadAssetAtPath<Texture2D>("MyIcon");
        Add(new EditorToolbarButton(icon, () => { Debug.Log("Hello!"); }));
        Add(new EditorToolbarButton(icon, () => { Debug.Log("Hello again!"); }));
        SetupChildrenAsButtonStrip();
    }
}
```
