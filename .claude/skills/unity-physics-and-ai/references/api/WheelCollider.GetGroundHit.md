<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WheelCollider.GetGroundHit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets ground collision data for the wheel.

If the wheel collides with something, returns `true` and fills the `hit` structure. If the wheel is not colliding, returns `false` and leaves `hit` structure unchanged.

The reported hit is always the closest one. Because the tire friction model does not automatically respond to other PhysicsMaterials, any simulation of different ground materials must be done manually by adjusting forwardFriction and sidewaysFriction based on collider's material returned here.
