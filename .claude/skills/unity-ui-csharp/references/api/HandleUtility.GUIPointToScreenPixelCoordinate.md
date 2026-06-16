<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.GUIPointToScreenPixelCoordinate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Converts a 2D GUI position to screen pixel coordinates.

The bottom-left of the screen or window is at (0, 0). The top-right of the screen or window is at (Screen.width, Screen.height).

Additional resources: Input.mousePosition and Camera.ScreenPointToRay.

```csharp
using UnityEngine;
using UnityEditor;public class ExampleScript : MonoBehaviour
{
    public static Ray GUIPointToWorldRay(Vector2 guiPos, Camera camera)
    {
        Vector2 screenPixelPos = HandleUtility.GUIPointToScreenPixelCoordinate(guiPos);
        return Camera.main.ScreenPointToRay(screenPixelPos);
    }
}
```
