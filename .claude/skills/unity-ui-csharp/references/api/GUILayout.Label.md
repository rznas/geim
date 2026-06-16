<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.Label.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| text | Text to display on the label. |
| image | Texture to display on the label. |
| content | Text, image and tooltip for this label. |
| style | The style to use. If left out, the `label` style from the current GUISkin is used. |
| options | An optional list of layout options that specify extra layouting properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Description

Make an auto-layout label.

Labels have no user interaction, do not catch mouse clicks and are always rendered in normal style. If you want to make a control that responds visually to user input, use a Box control


 *Label in the Game View.*

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    // Draws a texture and a label after the Texture
    // using GUILayout.
    Texture tex;    void OnGUI()
    {
        if (!tex)
        {
            Debug.LogError("Missing texture, assign a texture in the inspector");
        }
        GUILayout.Label(tex);
        GUILayout.Label("This is an sized label");
    }
}
```
