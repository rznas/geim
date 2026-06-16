<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Joint2D-connectedBody.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Rigidbody2D object to which the other end of the joint is attached (ie, the object without the joint component).

If this property is set to null then the joint attaches to a fixed point in space rather than another Rigidbody2D.

Unity does not support connecting a joint to a Rigidbody2D in a different Scene that is using a local physics Scene. If a joint is connected to a Rigidbody2D, and then that Rigidbody2D is moved to a Scene that uses LocalPhysicsMode.Physics2D, then the joint is automatically disconnected from the Rigidbody2D.

Additional resources: Scene, LocalPhysicsMode, Rigidbody2D and collideConnected.
