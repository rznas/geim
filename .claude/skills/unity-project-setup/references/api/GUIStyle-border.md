<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-border.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The borders of all background images.

This corresponds to the border settings for IMGUI elements. It only affects the rendering of the background image and has no effect on positioning.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Prints the left, right, top and down values of the GUIStyle border    RectOffset bdr;
    void OnGUI()
    {
        bdr = GUI.skin.button.border;
        Debug.Log("Left: " + bdr.left + " Right: " + bdr.right);
        Debug.Log("Top: " + bdr.top + " Bottom: " + bdr.bottom);
    }
}
```
