<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-margin.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The margins between elements rendered in this style and any other GUI elements.

This only has effect when using automatic layout (Additional resources: GUILayout).

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Prints the left, right, top and down values of the GUIStyle margin    RectOffset rctOff;    void OnGUI()
    {
        rctOff = GUI.skin.button.margin;
        Debug.Log("Left: " + rctOff.left + " Right: " + rctOff.right);
        Debug.Log("Top: " + rctOff.top + " Bottom: " + rctOff.bottom);
    }
}
```
