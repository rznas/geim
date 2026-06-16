<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.TransformWriteMode.Fast2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Transforms are written but the rotation is converted to a UnityEngine.Quaternion where only a single axis is written, all others will be set to zero rotation. This is the fastest method of writing transforms however, any 3D rotations or rotations on the unused axis will be reset to zero. The rotational axis written to depends on the current TransformPlane selected with PhysicsWorld.transformPlane where it will always be perpendicular to the transform plane.
