<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIUtility.ScreenToGUIPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Convert a point from screen space to GUI position.

Used for reconverting values calculated from GUIToScreenPoint

**Note:** In Unity the screen space **y** coordinate varies from zero at the top edge of the window to a maximum at the bottom edge of the window. This is different from what you might expect.

Additional resources: GUIUtility.GUIToScreenPoint.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Check the difference between the mouse position (Screen) and
    // the converted GUI positions because of the group.    void OnGUI()
    {
        Vector2 screenPos = Event.current.mousePosition;
        GUI.BeginGroup(new Rect(10, 10, 100, 100));
        Vector2 convertedGUIPos = GUIUtility.ScreenToGUIPoint(screenPos);
        GUI.EndGroup();
        Debug.Log("Screen: " + screenPos + " GUI: " + convertedGUIPos);
    }
}
```
