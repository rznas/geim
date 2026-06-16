<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsScene.ResetInterpolationPoses.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Resets the Transform positions of interpolated and extrapolated Rigidbodies in this PhysicsScene to Rigidbody.position and Transform rotations to Rigidbody.rotation.

Call this method before simulating to prevent Transform poses of interpolated and extrapolated Rigidbodies from getting synced to the physics system. If multiple PhysicsScene.Simulate calls are to be made this frame, it's enough to call this method only once, before the first simulation.

This method is called automatically for the default PhysicsScene and therefore any manual calls on the Physics.defaultPhysicsScene will fail.

Additional resources: PhysicsScene.InterpolateBodies.
