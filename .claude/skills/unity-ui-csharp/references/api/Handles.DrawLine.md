<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.DrawLine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| p1 | The position of the first line's end point in world space. |
| p2 | The position of the second line's end point in world space. |
| thickness | Line thickness in UI points (zero thickness draws single-pixel line). |

### Description

Draws a line from `p1` to `p2`.

The Handles.color and Handles.matrix properties colorize and additionally transform the line position. Unity ignores `DrawLine` (that is, nothing happens) when the current GUI event type is not EventType.Repaint.


 *Draw Line in the Scene View.*

Below is an example of an Editor script that draws lines in SceneView to GameObjects listed in a script.

```csharp
// Draw lines to the connected game objects that a script has.
// If the target object doesnt have any game objects attached
// then it draws a line from the object to (0, 0, 0).using UnityEditor;
using UnityEngine;[CustomEditor(typeof(ConnectedObjectsExampleScript))]
class ConnectLineHandleExampleScript : Editor
{
    void OnSceneGUI()
    {
        ConnectedObjectsExampleScript connectedObjects = target as ConnectedObjectsExampleScript;
        if (connectedObjects.objs == null)
            return;        Vector3 center = connectedObjects.transform.position;
        for (int i = 0; i < connectedObjects.objs.Length; i++)
        {
            GameObject connectedObject = connectedObjects.objs[i];
            if (connectedObject)
            {
                Handles.DrawLine(center, connectedObject.transform.position);
            }
            else
            {
                Handles.DrawLine(center, Vector3.zero);
            }
        }
    }
}
```

Example script to attach to a GameObject that will act as a handle:

```csharp
using UnityEngine;public class ConnectedObjectsExampleScript : MonoBehaviour
{
    public GameObject[] objs = null;
}
```

Line `thickness` can be optionally set. Zero thickness draws a one-pixel line. Larger thickness values express line thickness in UI points. For example, a thickness of 1.0 could be two pixels wide on screen if the display zoom is 200% (see EditorGUIUtility.pixelsPerPoint).


 *Lines of varying thickness.*

```csharp
using UnityEngine;
using UnityEditor;public class ExampleScript : MonoBehaviour
{
}// Displays lines of various thickness in the scene view
[CustomEditor(typeof(ExampleScript))]
public class ExampleEditor : Editor
{
    public void OnSceneGUI()
    {
        var t = target as ExampleScript;
        var tr = t.transform;
        var position = tr.position;
        Handles.color = Color.yellow;
        for (int i = 0; i < 10; ++i)
        {
            var linePos = position + Vector3.right * (i * 0.5f);
            Handles.DrawLine(linePos, linePos + Vector3.up, i);
        }
    }
}
```

Additional resources: Handles.lineThickness, Handles.DrawLines, Handles.DrawPolyLine, Handles.DrawWireDisc.
