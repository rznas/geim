<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIUtility.RotateAroundPivot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Helper function to rotate the GUI around a point.

Modifies GUI.matrix to rotate all GUI elements `angle` degrees around `pivotPoint`.

Additional resources: GUI.matrix, ScaleAroundPivot.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Rotate a button 10 degrees clockwise when pressed.    float rotAngle = 0;
    Vector2 pivotPoint;    void OnGUI()
    {
        pivotPoint = new Vector2(Screen.width / 2, Screen.height / 2);
        GUIUtility.RotateAroundPivot(rotAngle, pivotPoint);
        if (GUI.Button(new Rect(Screen.width / 2 - 25, Screen.height / 2 - 25, 50, 50), "Rotate"))
        {
            rotAngle += 10;
        }
    }
}
```
