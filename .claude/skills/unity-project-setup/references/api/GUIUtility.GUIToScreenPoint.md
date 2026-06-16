<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIUtility.GUIToScreenPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Convert a point from GUI position to screen space.

**Note:** In Unity the screen space **y** coordinate varies from zero at the top edge of the window to a maximum at the bottom edge of the window. This is different from what you might expect.

Additional resources: GUIUtility.ScreenToGUIPoint.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Converts a GUICoordinate (affected by a group) to a Screen coordinate.    void OnGUI()
    {
        Vector2 gPos = new Vector2(10, 10);
        GUI.BeginGroup(new Rect(10, 10, 100, 100));
        Vector2 convertedGUIPos = GUIUtility.GUIToScreenPoint(gPos);
        GUI.EndGroup();
        Debug.Log("GUI: " + gPos + " Screen: " + convertedGUIPos);
    }
}
```
