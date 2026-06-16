<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MeshCollider-convex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use a convex collider from the mesh.

This means that if you have this set to true, your mesh collider wont have holes or entrances. Convex meshes can collide with other convex colliders and non-convex meshes. Thus convex mesh colliders are suitable on rigidbodies, if you really need more detailed colliders than what the primitive colliders provide you with.
 **Note**: A convex mesh is required by the physics engine to have a non-zero volume. Flat meshes such as quads or planes that are marked as convex will be modified by the physics engine to have a thickness (and therefore a volume) to satisfy this requirement. The thickness of the resulting mesh is proportional to its size and can be up to 0.05 of its longest dimension in the plane of the mesh.
