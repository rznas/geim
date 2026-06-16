<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Pose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Representation of a Position, and a Rotation in 3D Space

This structure is used primarily in XR applications to describe the current "pose" of a device in 3D space.

### Static Properties

| Property | Description |
| --- | --- |
| identity | Shorthand for pose which represents zero position, and an identity rotation. |

### Properties

| Property | Description |
| --- | --- |
| forward | Returns the forward vector of the pose. |
| position | The position component of the pose. |
| right | Returns the right vector of the pose. |
| rotation | The rotation component of the pose. |
| up | Returns the up vector of the pose. |

### Constructors

| Constructor | Description |
| --- | --- |
| Pose | Creates a new pose with the given vector, and quaternion values. |

### Public Methods

| Method | Description |
| --- | --- |
| GetTransformedBy | Transforms the current pose into the local space of the provided pose. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | Returns true if two poses are not equal. |
| operator == | Returns true if two poses are equal. |
