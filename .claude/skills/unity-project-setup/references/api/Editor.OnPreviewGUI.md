<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.OnPreviewGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| r | The rectangle in which to draw the preview. |
| background | Background image. |

### Description

Creates a custom preview for the preview area of the Inspector, the headers of the primary Editor, and the object selector.

You must implement Editor.HasPreviewGUI for this method to be called.

If you implement OnInteractivePreviewGUI, then this method is only called for non-interactive custom previews. The overidden method should render a preview of the asset in the specified rectangle (r). The default implementation is a no-op.

**Note:** Inspector previews are limited to the primary Editor of persistent objects, such as GameObjectInspector, MaterialEditor, and TextureInspector. A component cannot have its own Inspector preview.

```csharp
using UnityEngine;
using UnityEditor;[CreateAssetMenu]
class MyObject : ScriptableObject
{
    public string text;
}// Show a preview of the text saved in MyObject.
[CustomEditor(typeof(MyObject))]
public class MyObjectEditor : Editor
{
    public override bool HasPreviewGUI() => true;    public override void OnPreviewGUI(Rect r, GUIStyle background)
    {
        GUI.Label(r, (target as MyObject).text);
    }
}
```

Additional resources: OnInteractivePreviewGUI.
