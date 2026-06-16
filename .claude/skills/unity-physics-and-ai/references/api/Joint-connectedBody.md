<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Joint-connectedBody.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A reference to another rigidbody this joint connects to.

If not set then the joint connects the object to a fixed point in world space.

Unity does not support connecting a joint to a Rigidbody in a different Scene that is using a local physics Scene. If a joint is connected to a Rigidbody, and then that Rigidbody is moved to a Scene that uses LocalPhysicsMode.Physics3D, then the joint is automatically disconnected from the Rigidbody.

Additional resources: Scene and LocalPhysicsMode.
