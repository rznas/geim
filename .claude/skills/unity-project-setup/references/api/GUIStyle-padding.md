<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-padding.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Space from the edge of GUIStyle to the start of the contents.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Prints the left, right, top and down values of the GUIStyle overflow    RectOffset rctOff;    void OnGUI()
    {
        rctOff = GUI.skin.button.padding;
        Debug.Log("Left: " + rctOff.left + " Right: " + rctOff.right);
        Debug.Log("Top: " + rctOff.top + " Bottom: " + rctOff.bottom);
    }
}
```
