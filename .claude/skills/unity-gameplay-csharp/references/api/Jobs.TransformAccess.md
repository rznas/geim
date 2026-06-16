<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Jobs.TransformAccess.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents the position, rotation and scale of an object.

### Properties

| Property | Description |
| --- | --- |
| isValid | Determines whether this instance refers to a valid Transform. |
| localPosition | The position of the transform relative to the parent. |
| localRotation | The rotation of the transform relative to the parent transform's rotation. |
| localScale | The scale of the transform relative to the parent. |
| localToWorldMatrix | Matrix that transforms a point from local space into world space (Read Only). |
| position | The position of the transform in world space. |
| rotation | The rotation of the transform in world space stored as a Quaternion. |
| worldToLocalMatrix | Matrix that transforms a point from world space into local space (Read Only). |

### Public Methods

| Method | Description |
| --- | --- |
| GetLocalPositionAndRotation | Gets the position and rotation of the transform in local space relative to its parent transform. |
| GetPositionAndRotation | Gets the position and rotation of the transform in world space. |
| SetLocalPositionAndRotation | Sets the position and rotation of the transform in local space relative to its parent transform. |
| SetPositionAndRotation | Sets the world space position and rotation of the transform. |
