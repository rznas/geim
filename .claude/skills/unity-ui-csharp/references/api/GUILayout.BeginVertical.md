<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.BeginVertical.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| text | Text to display on group. |
| image | Texture to display on group. |
| content | Text, image, and tooltip for this group. |
| style | The style to use for background image and padding values. If left out, the background is transparent. |
| options | An optional list of layout options that specify extra layouting properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Description

Begin a vertical control group.

All controls rendered inside this element will be placed vertically below each other. The group must be closed with a call to EndVertical.


 *Vertical Layout.*

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void OnGUI()
    {
        // Starts a vertical group
        GUILayout.BeginVertical("box");        GUILayout.Button("I'm the top button");
        GUILayout.Button("I'm the bottom button");        GUILayout.EndVertical();
    }
}
```
