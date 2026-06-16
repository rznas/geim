<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.FreeRotateHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | The control ID of the handle. |
| rotation | The orientation of the handle in 3D space. |
| position | The center of the handle in 3D space. |
| size | The size of the handle.  **Note:** Use HandleUtility.GetHandleSize where you might want to have constant screen-sized handles. |

### Returns

**Quaternion** The new rotation value modified by the user's interaction with the handle. If the user has not moved the handle, it will return the same value as you passed into the function.

### Description

Make an unconstrained rotation handle.

The handle can rotate freely on all axes. The rotation gizmo has no visible axes and is simply a circle in the Scene view. Users can click and drag from within the circle to provide input rotation to your editor script.


 *FreeRotate handle seen in the Scene View.*

```csharp
// Name this script "FreeRotateEditor"
using UnityEngine;
using UnityEditor;[CustomEditor(typeof(FreeRotate))]
[CanEditMultipleObjects]
public class FreeRotateEditor : Editor
{
    public void OnSceneGUI()
    {
        FreeRotate t = (target as FreeRotate);        EditorGUI.BeginChangeCheck();
        Quaternion rot = Handles.FreeRotateHandle(t.rot, Vector3.zero, 2);
        if (EditorGUI.EndChangeCheck())
        {
            Undo.RecordObject(target, "Free Rotate");
            t.rot = rot;
            t.Update();
        }
    }
}
```

And the script attached to this Handle:

```csharp
// Name this script "FreeRotate"
using UnityEngine;[ExecuteInEditMode]
public class FreeRotate : MonoBehaviour
{
    public Quaternion rot = Quaternion.identity;
    public void Update()
    {
        transform.rotation = rot;
    }
}
```
