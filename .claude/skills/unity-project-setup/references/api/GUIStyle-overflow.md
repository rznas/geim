<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-overflow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Extra space to be added to the background image.

This is used if your image has a drop shadow and you want to extend the background image beyond the rectangles specified for gui elements that use this style.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Prints the left, right, top and down values of the GUIStyle overflow    RectOffset rctOff;    void OnGUI()
    {
        rctOff = GUI.skin.button.overflow;
        Debug.Log("Left: " + rctOff.left + " Right: " + rctOff.right);
        Debug.Log("Top: " + rctOff.top + " Bottom: " + rctOff.bottom);
    }
}
```
