<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.FlexibleSpace.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Insert a flexible space element.

Flexible spaces use up any leftover space in a layout.

**Note:** This will override the GUILayout.ExpandWidth and GUILayout.ExpandHeight


 *Flexible Space in a GUILayout Area.*

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    float sliderValue = 1.0f;    void OnGUI()
    {
        // Wrap everything in the designated GUI Area
        GUILayout.BeginArea(new Rect(0, 0, 200, 60));
        // Begin the singular Horizontal Group
        GUILayout.BeginHorizontal();
        // Place a Button normally
        GUILayout.RepeatButton("A button with\ntwo lines");
        // Place a space between the button and the vertical area
        // so it fits the whole area
        GUILayout.FlexibleSpace();
        // Arrange two more Controls vertically beside the Button
        GUILayout.BeginVertical();
        GUILayout.Box("Value:" + Mathf.Round(sliderValue));
        sliderValue = GUILayout.HorizontalSlider(sliderValue, 0.0f, 10f);        // End the Groups and Area
        GUILayout.EndVertical();
        GUILayout.EndHorizontal();
        GUILayout.EndArea();
    }
}
```
