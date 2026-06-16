<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsRotate.LerpRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rotation | The rotation to lerp with against the current rotation. |
| interval | The lerp interval, typically in the range [0, 1]. A value outside of this range performs normalized linear extrapolation. |

### Returns

**PhysicsRotate** The normalized linear interpolation/extrapolation.

### Description

Calculate the normalized linear interpolation of this rotation and the specified rotation using the specified interval.

### Parameters

| Parameter | Description |
| --- | --- |
| rotationA | The rotation to lerp from. |
| rotationB | The rotation to lerp to. |
| interval | The lerp interval, typically in the range [0, 1]. A value outside of this range performs normalized linear extrapolation. |

### Returns

**PhysicsRotate** The normalized linear interpolation/extrapolation.

### Description

Calculate the normalized linear interpolation between two rotations using the specified fraction.
