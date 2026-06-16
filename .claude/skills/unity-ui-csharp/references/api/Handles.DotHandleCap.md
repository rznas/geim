<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.DotHandleCap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| controlID | The control ID for the handle. |
| position | The position of the handle in the space of Handles.matrix. |
| rotation | The rotation of the handle in the space of Handles.matrix. |
| size | The size of the handle in the space of Handles.matrix. Use HandleUtility.GetHandleSize if you want a constant screen-space size. |
| eventType | Event type for the handle to act upon. By design it handles EventType.Layout and EventType.Repaint events. |

### Description

Draw a dot handle. Pass this into handle functions.

On EventType.Layout event, calculates handle distance to mouse and calls HandleUtility.AddControl accordingly.

On EventType.Repaint event, draws the handle shape.

 *Dot Handle Cap in the Scene View.*

Add the following script to your Assets folder as DotExample.cs and add the DotExample component to an object in a Scene.

```csharp
using UnityEngine;public class DotExample : MonoBehaviour {}
```

Add the following script to Assets/Editor as DotExampleEditor.cs and select the object with the DotExample component.

```csharp
using UnityEditor;
using UnityEngine;[CustomEditor(typeof(DotExample))]
public class DotExampleEditor : Editor
{
    float size = 1f;    protected virtual void OnSceneGUI()
    {
        if (Event.current.type == EventType.Repaint)
        {
            Transform transform = ((DotExample)target).transform;
            Handles.color = Handles.xAxisColor;
            Handles.DotHandleCap(
                0,
                transform.position + new Vector3(3f, 0f, 0f),
                transform.rotation * Quaternion.LookRotation(Vector3.right),
                size,
                EventType.Repaint
            );
            Handles.color = Handles.yAxisColor;
            Handles.DotHandleCap(
                0,
                transform.position + new Vector3(0f, 3f, 0f),
                transform.rotation * Quaternion.LookRotation(Vector3.up),
                size,
                EventType.Repaint
            );
            Handles.color = Handles.zAxisColor;
            Handles.DotHandleCap(
                0,
                transform.position + new Vector3(0f, 0f, 3f),
                transform.rotation * Quaternion.LookRotation(Vector3.forward),
                size,
                EventType.Repaint
            );
        }
    }
}
```
