<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIUtility.ScaleAroundPivot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Helper function to scale the GUI around a point.

Modifies GUI.matrix to scale all GUI elements around a `pivotPoint`.

Additional resources: GUI.matrix, RotateAroundPivot.

```csharp
using UnityEngine;
using System.Collections;// Scale a button by 1.5 times each time is pressed.public class ExampleClass : MonoBehaviour
{
    private Vector2 scale = new Vector2(1, 1);
    private Vector2 pivotPoint;    void OnGUI()
    {
        pivotPoint = new Vector2(Screen.width / 2, Screen.height / 2);
        GUIUtility.ScaleAroundPivot(scale, pivotPoint);        if (GUI.Button(new Rect(Screen.width / 2 - 25, Screen.height / 2 - 25, 50, 50), "Big!"))
        {
            scale += new Vector2(0.5F, 0.5F);
        }
    }
}
```
