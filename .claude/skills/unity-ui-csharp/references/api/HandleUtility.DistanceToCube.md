<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.DistanceToCube.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Position of the cube. |
| rotation | Rotation of the cube. |
| size | Size of the cube. |

### Returns

**float** Distance from mouse to cube in pixels.

### Description

Returns the distance in pixels from the mouse pointer to a cube.

Calculates the screen space distance from the mouse pointer to a cube at given world space `position` with the given `rotation` and `size`.

Returns zero when mouse pointer is directly over the cube.

Uses the current camera to determine the distance.

```csharp
using UnityEngine;
using UnityEditor;public class ExampleScript : MonoBehaviour
{
}// Displays cube in scene view, and distance from mouse
// to the cube.
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
        // draw a cube in scene
        Handles.color = Color.yellow;
        Handles.CubeHandleCap(0, position, rotation, size, Event.current.type);
        // calculate distance from mouse to cube, and display it
        var distance = HandleUtility.DistanceToCube(position, rotation, size);
        GUI.color = Color.black;
        Handles.Label(position, distance.ToString("F0"));
        // make scene view repaint on mouse move
        if (Event.current.type == EventType.MouseMove)
            Event.current.Use();
    }
}
```

.

Additional resources: DistanceToCircle, DistanceToCone, DistanceToLine.
