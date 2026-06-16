<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.Box.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| text | Text to display on the box. |
| image | Texture to display on the box. |
| content | Text, image and tooltip for this box. |
| style | The style to use. If left out, the `box` style from the current GUISkin is used. |
| options | An optional list of layout options that specify extra layouting properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Description

Make an auto-layout box.

This will make a box that contains static text or images but not other GUI controls. If you want to make a rectangular container for a set of GUI controls, use one of the grouping functions (BeginHorizontal, BeginVertical, BeginArea, etc...).


 *Boxes in the Game View.*

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    Texture tex;    void OnGUI()
    {
        if (!tex)
        {
            Debug.LogError("Missing texture, assign a texture in the inspector");
        }
        GUILayout.Box(tex);
        GUILayout.Box("This is a sized label");
    }
}
```
