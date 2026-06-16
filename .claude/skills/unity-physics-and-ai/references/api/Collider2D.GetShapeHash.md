<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D.GetShapeHash.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**uint** A hash value that uniquely identifies the configured geometry of the Collider2D.

### Description

Generates a simple hash value based upon the geometry of the Collider2D.

The geometry of a Collider2D can be configured by various properties on all of the Collider2D types such as the radius of a CircleCollider2D or the size of a BoxCollider2D. The geometry created as opposed to the properties used to generate them are what is is hashed here. Two different Collider2D that are configured to produce the same geometry produce the same hash.

This hash can be used to determine if the Collider2D geometry is the same as another Collider2D geometry or if the geometry has changed by comparing against previous hash values.

A common use-case is when using Collider2D.CreateMesh where it is useful to determine if the resulting Mesh would change due to the Collider2D geometry changing.

Additional resources: Collider2D.CreateMesh.
