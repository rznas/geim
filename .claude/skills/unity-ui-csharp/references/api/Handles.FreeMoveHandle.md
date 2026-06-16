<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.FreeMoveHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position of the handle in the space of Handles.matrix. |
| size | The size of the handle in the space of Handles.matrix. Use HandleUtility.GetHandleSize if you want a constant screen-space size. |
| snap | The snap increment on all axes. See Handles.SnapValue. |
| capFunction | The function to call for doing the actual drawing. |
| controlID | The control ID for the handle. |

### Returns

**Vector3** The new value modified by the user's interaction with the handle. If the user has not moved the handle, it will return the same value as you passed into the function.

### Description

Make an unconstrained movement handle.

This handle can move freely in all directions. Hold down Ctrl (Cmd on macOS) to snap to the grid (see PositioningGameObjects). Hold Ctrl-Shift (Cmd-Shift on macOS) to snap the object to any Collider surface under the mouse pointer.
 
 
 *Free Move handle in the Scene View.*
 
 Add the following script to your Assets folder as FreeMoveHandleExample.cs and add the FreeMoveHandleExample component to an object in a Scene.

```csharp
using UnityEngine;[ExecuteInEditMode]
public class FreeMoveHandleExample : MonoBehaviour
{
    public Vector3 targetPosition { get { return m_TargetPosition; } set { m_TargetPosition = value; } }
    [SerializeField]
    private Vector3 m_TargetPosition = new Vector3(1f, 0f, 2f);    public virtual void Update()
    {
        transform.LookAt(m_TargetPosition);
    }
}
```

Add the following script to Assets/Editor as FreeMoveHandleExampleEditor.cs and select the object with the FreeMoveHandleExample component.

```csharp
using UnityEditor;
using UnityEngine;[CustomEditor(typeof(FreeMoveHandleExample)), CanEditMultipleObjects]
public class FreeMoveHandleExampleEditor : Editor
{
    protected virtual void OnSceneGUI()
    {
        FreeMoveHandleExample example = (FreeMoveHandleExample)target;        float size = HandleUtility.GetHandleSize(example.targetPosition) * 0.5f;
        Vector3 snap = Vector3.one * 0.5f;        EditorGUI.BeginChangeCheck();
        Vector3 newTargetPosition = Handles.FreeMoveHandle(example.targetPosition, size, snap, Handles.RectangleHandleCap);
        if (EditorGUI.EndChangeCheck())
        {
            Undo.RecordObject(example, "Change Look At Target Position");
            example.targetPosition = newTargetPosition;
            example.Update();
        }
    }
}
```
