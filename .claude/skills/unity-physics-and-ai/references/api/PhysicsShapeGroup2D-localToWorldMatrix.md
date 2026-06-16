<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShapeGroup2D-localToWorldMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets or sets a matrix that transforms the PhysicsShapeGroup2D vertices from local space into world space.

When retrieving a PhysicsShapeGroup2D via Rigidbody2D.GetShapes or Collider2D.GetShapes, this matrix will be set to the pose of the Rigidbody2D unless a Rigidbody2D is not available in which case the matrix it set to Matrix4x4.identity.
