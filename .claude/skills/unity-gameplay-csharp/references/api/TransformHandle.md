<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Position, rotation and scale of an object.

Every object in a Scene has a TransformHandle. It's used to store and manipulate the position, rotation and scale of the object. Every TransformHandle can have a parent, which allows you to apply position, rotation and scale hierarchically. This is the hierarchy seen in the Hierarchy pane.

### Static Properties

| Property | Description |
| --- | --- |
| None | An invalid transform handle. |

### Properties

| Property | Description |
| --- | --- |
| childCount | The number of children the parent TransformHandle has. |
| DirectChildren | An enumerable representing the direct children of this transform handle. |
| eulerAngles | The rotation as Euler angles in degrees. |
| forward | Returns a normalized vector representing the blue axis of the transform in world space. |
| hierarchyCapacity | The transform capacity of the transform's hierarchy data structure. |
| hierarchyCount | The number of transforms in the transform's hierarchy data structure. |
| localEulerAngles | The rotation as Euler angles in degrees relative to the parent transform's rotation. |
| localPosition | Position of the transform relative to the parent transform. |
| localRotation | The rotation of the transform relative to the transform rotation of the parent. |
| localScale | The scale of the transform relative to the GameObjects parent. |
| localToWorldMatrix | Matrix that transforms a point from local space into world space (Read Only). |
| lossyScale | The global scale of the object (Read Only). |
| parent | The parent of the transform. |
| position | The world space position of the Transform. |
| right | The red axis of the transform in world space. |
| root | Returns the topmost transform in the hierarchy. |
| rotation | A Quaternion that stores the rotation of the Transform in world space. |
| up | The green axis of the transform in world space. |
| worldToLocalMatrix | Matrix that transforms a point from world space into local space (Read Only). |

### Public Methods

| Method | Description |
| --- | --- |
| DetachChildren | Unparents all of the target object's children. |
| GetChild | Returns a transform child by index. |
| GetDirectChildrenEnumerator | Returns an enumerator that allows you to iterate over all direct children of this transform handle. |
| GetLocalPositionAndRotation | Updates the value of the out parameters localPosition and localRotation with the transform's current position and rotation in local space (that is, relative to its parent's transformHandle). |
| GetPositionAndRotation | Updates the value of the out parameters position and rotation with the transform's current position and rotation in world space (that is, relative to the scene's origin coordinates). |
| HasParent | Does this transform have a parent? |
| InverseTransformDirection | Transforms a direction from world space to local space. The opposite of TransformHandle.TransformDirection. |
| InverseTransformDirections | Transforms multiple directions from world space to local space overwriting each original position with the transformed version. The opposite of TransformHandle.TransformDirections. |
| InverseTransformPoint | Transforms position from world space to local space. |
| InverseTransformPoints | Transforms multiple positions from world space to local space overwriting each original position with the transformed version. |
| InverseTransformVector | Transforms a vector from world space to local space. The opposite of TransformHandle.TransformVector. |
| InverseTransformVectors | Transforms multiple vectors from world space to local space overwriting each original position with the transformed version. The opposite of TransformHandle.TransformVectors. |
| IsChildOf | Is this transform a child of parent? |
| IsValid | Checks if the transform handle is valid or not. |
| LookAt | Rotates the transform so the forward vector points at /target/'s current position. |
| Rotate | Use TransformHandle.Rotate to rotate GameObjects in a variety of ways. The rotation is often provided as an Euler angle and not a Quaternion. |
| RotateAround | Rotates the transform about axis passing through point in world coordinates by angle degrees. |
| SetLocalPositionAndRotation | Sets the position and rotation of the Transform component in local space (i.e. relative to its parent transform). |
| SetParent | Set the parent of the transform. |
| SetPositionAndRotation | Sets the world space position and rotation of the transform. |
| TransformDirection | Transforms direction from local space to world space. |
| TransformDirections | Transforms multiple directions from local space to world space overwriting each original direction with the transformed version. |
| TransformPoint | Transforms position from local space to world space. |
| TransformPoints | Transforms multiple points from local space to world space overwriting each original point with the transformed version. |
| TransformVector | Transforms vector from local space to world space. |
| TransformVectors | Transforms multiple vectors from local space to world space overwriting each original vector with the transformed version. |
| Translate | Moves the transform along its x, y, and z axes by the values of the translation parameter's x, y, and z components respectively. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | Returns true if two TransformHandles are different. |
| operator == | Returns true if two TransformHandles are equal. |
