<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a 2D transformation combining a translation and a PhysicsRotate.

### Static Properties

| Property | Description |
| --- | --- |
| identity | The identity transformation i.e. a transformation with no translation or rotation. |

### Properties

| Property | Description |
| --- | --- |
| isValid | Check if the PhysicsTransform is valid (position is not NaN and PhysicsRotate.isValid). |
| position | The translation for the transformation. |
| rotation | The rotation for the transformation. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsTransform | Create an identity transform. |

### Public Methods

| Method | Description |
| --- | --- |
| GetPositionAndRotation | Get both the position and rotation. |
| InverseMultiplyTransform | Inverse Multiply the specified transform with the current transform. |
| InverseTransformPoint | Inverse Transform a point using the current transform translation and rotation. |
| MultiplyTransform | Multiply the specified transform with the current transform. |
| TransformPoint | Transform a point using the current transform translation and rotation. |

### Operators

| Operator | Description |
| --- | --- |
| PhysicsTransform | Implicit conversion of a UnityEngine.Vector2 that represents a translation transformation with no rotation. |
| PhysicsTransform | Implicit conversion of a PhysicsRotate that represents a rotation transformation with no translation. |
