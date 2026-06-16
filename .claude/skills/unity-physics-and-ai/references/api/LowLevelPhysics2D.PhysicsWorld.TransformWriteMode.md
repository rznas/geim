<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.TransformWriteMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines how the 2D Transforms from each PhysicsBody are written to the 3D Transform system.

### Properties

| Property | Description |
| --- | --- |
| Off | Transforms are never written. This is the fastest operation. |
| Fast2D | Transforms are written but the rotation is converted to a UnityEngine.Quaternion where only a single axis is written, all others will be set to zero rotation. This is the fastest method of writing transforms however, any 3D rotations or rotations on the unused axis will be reset to zero. The rotational axis written to depends on the current TransformPlane selected with PhysicsWorld.transformPlane where it will always be perpendicular to the transform plane. |
| Slow3D | Transforms are written but the rotation is converted to a UnityEngine.Quaternion where the rotation of the body transform is merged into the existing 3D rotation. This is the slowest method of writing transforms however, all 3D rotations are preserved. The rotational axis written to depends on the current TransformPlane selected with PhysicsWorld.transformPlane where it will always be perpendicular to the transform plane. |
