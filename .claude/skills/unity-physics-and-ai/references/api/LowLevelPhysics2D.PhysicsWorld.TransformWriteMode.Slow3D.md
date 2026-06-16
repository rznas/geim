<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.TransformWriteMode.Slow3D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Transforms are written but the rotation is converted to a UnityEngine.Quaternion where the rotation of the body transform is merged into the existing 3D rotation. This is the slowest method of writing transforms however, all 3D rotations are preserved. The rotational axis written to depends on the current TransformPlane selected with PhysicsWorld.transformPlane where it will always be perpendicular to the transform plane.
