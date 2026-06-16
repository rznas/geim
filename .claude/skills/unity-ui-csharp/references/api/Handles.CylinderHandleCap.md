<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.CylinderHandleCap.html
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

Draw a cylinder handle. Pass this into handle functions.

On EventType.Layout event, calculates handle distance to mouse and calls HandleUtility.AddControl accordingly.

On EventType.Repaint event, draws the handle shape.

 *Cylinder Handle Cap in the Scene View.*

Add the following script to your Assets folder as CylinderExample.cs and add the CylinderExample component to an object in a Scene.

```csharp
using UnityEngine;public class CylinderExample : MonoBehaviour {}
```

Add the following script to Assets/Editor as CylinderExampleEditor.cs and select the object with the CylinderExample component.

```csharp
using UnityEditor;
using UnityEngine;[CustomEditor(typeof(CylinderExample))]
public class CylinderExampleEditor : Editor
{
    float size = 1f;    protected virtual void OnSceneGUI()
    {
        if (Event.current.type == EventType.Repaint)
        {
            Transform transform = ((CylinderExample)target).transform;
            Handles.color = Handles.xAxisColor;
            Handles.CylinderHandleCap(
                0,
                transform.position + new Vector3(3f, 0f, 0f),
                transform.rotation * Quaternion.LookRotation(Vector3.right),
                size,
                EventType.Repaint
            );
            Handles.color = Handles.yAxisColor;
            Handles.CylinderHandleCap(
                0,
                transform.position + new Vector3(0f, 3f, 0f),
                transform.rotation * Quaternion.LookRotation(Vector3.up),
                size,
                EventType.Repaint
            );
            Handles.color = Handles.zAxisColor;
            Handles.CylinderHandleCap(
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
