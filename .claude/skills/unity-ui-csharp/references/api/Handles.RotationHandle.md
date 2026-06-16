<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.RotationHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rotation | The orientation of the handle in 3D space. |
| position | The center of the handle in 3D space. |
| ids | The control IDs of the handles. Use RotationHandleIds.default. |

### Returns

**Quaternion** The new rotation value modified by the user's interaction with the handle. If the user has not moved the handle, it will return the same value as you passed into the function.

### Description

Make a Scene view rotation handle.

This will behave like the built-in rotation tool in Unity. **Note:** Use HandleUtility.GetHandleSize where you might want to have constant screen-sized handles.


 *Rotate the attached object from the Rotation Handle.*

```csharp
// Name this script "RotateAtPointEditor"
using UnityEngine;
using UnityEditor;[CustomEditor(typeof(RotateAtPoint))]
[CanEditMultipleObjects]
public class RotateAtPointEditor : Editor
{
    public void OnSceneGUI()
    {
        RotateAtPoint t = (target as RotateAtPoint);        EditorGUI.BeginChangeCheck();
        Quaternion rot = Handles.RotationHandle(t.rot, Vector3.zero);
        if (EditorGUI.EndChangeCheck())
        {
            Undo.RecordObject(target, "Rotated RotateAt Point");
            t.rot = rot;
            t.Update();
        }
    }
}
```

And the script attached to this GameObject:

```csharp
// Name this script "RotateAtPoint"
using UnityEngine;[ExecuteInEditMode]
public class RotateAtPoint : MonoBehaviour
{
    public Quaternion rot = Quaternion.identity;
    public void Update()
    {
        transform.rotation = rot;
    }
}
```
