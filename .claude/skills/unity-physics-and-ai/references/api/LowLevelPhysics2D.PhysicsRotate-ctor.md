<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsRotate-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Create an identity rotation.

### Parameters

| Parameter | Description |
| --- | --- |
| direction | The direction to use. This cannot be zero length. |

### Description

Create a rotation with the specified direction.

### Parameters

| Parameter | Description |
| --- | --- |
| angle | The rotation angle specified, in radians. |

### Returns

**void** The rotation represented by the specified angle.

### Description

Create a rotation with the specified angle. NOTE: This cannot be used by Burst as the constructor makes an engine call to ensure the resultant direction is deterministic.

### Parameters

| Parameter | Description |
| --- | --- |
| rotation | The Quaternion rotation to use. |
| transformPlane | The transform plane to use. |

### Returns

**void** The 2D rotation extracted from the specified Quaternion.

### Description

Create a rotation with the specified UnityEngine.Quaternion.
