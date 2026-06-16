<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.DistanceToCone.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Position of the cone. |
| rotation | Rotation of the cone. |
| size | Size of the cone. |

### Returns

**float** Distance from mouse to cone in pixels.

### Description

Returns the distance in pixels from the mouse pointer to a cone.

Calculates the screen space distance from the mouse pointer to a cone at given world space `position` with the given `rotation` and `size`.

Returns zero when mouse pointer is directly over the cone.

Uses the current camera to determine the distance.

```csharp
using UnityEngine;
using UnityEditor;public class ExampleScript : MonoBehaviour
{
}// Displays cone in scene view, and distance from mouse
// to the cone.
[CustomEditor(typeof(ExampleScript))]
public class ExampleEditor : Editor
{
    public void OnSceneGUI()
    {
        var t = target as ExampleScript;
        var tr = t.transform;
        var position = tr.position;
        var rotation = tr.rotation;
        var size = 1.0f;
        // draw a cone in scene
        Handles.color = Color.yellow;
        Handles.ConeHandleCap(0, position, rotation, size, Event.current.type);
        // calculate distance from mouse to cone, and display it
        var distance = HandleUtility.DistanceToCone(position, rotation, size);
        GUI.color = Color.black;
        Handles.Label(position, distance.ToString("F0"));
        // make scene view repaint on mouse move
        if (Event.current.type == EventType.MouseMove)
            Event.current.Use();
    }
}
```

.

Additional resources: DistanceToCircle, DistanceToCube, DistanceToLine.
