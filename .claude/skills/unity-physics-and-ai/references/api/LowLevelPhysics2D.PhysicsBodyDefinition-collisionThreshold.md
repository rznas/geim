<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBodyDefinition-collisionThreshold.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A threshold used to control when continuous collision detection is used when a body moves. The value is used to compare the body linear velocity movement against the extents of all the shapes added to the body scaled by this threshold. If the movement exceeds the extents scaled by the threshold then continuous collision detection is used to stop tunneling. Lower values reduce the distance the body must move before continuous collision detection is used and can have a considerable impact on performance! Higher values increase the distance the body must move before continuous collision detection is used. Too low a threshold will result in continuous collision detection being used more often therefore affecting performance so this should be limited to specific bodies only. The default threshold is 0.5 which equates to half the total shape extents. The threshold is clamped to a range of 0.0 to 1.0 with 0.0 meaning continuous collision detection will always be used.
