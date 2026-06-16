<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.MeshUpdateFlags.DontRecalculateBounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that Unity should not recalculate the bounds when you set Mesh data using Mesh.SetSubMesh.

When you use Mesh.SetSubMesh to modify a Mesh's data, Unity's default behaviour is to re-calculate the values of the SubMeshDescriptor.bounds, SubMeshDescriptor.startVertex and SubMeshDescriptor.vertexCount fields from the current vertex and index buffer data.

You can make Unity skip these calculations by using the `MeshUpdateFlags.DontRecalculateBounds` flag. This can be beneficial to performance, however if you use this flag you must make sure that you pass correct values of the `bounds`, `startVertex` and `vertexCount` fields.

Additional resources: Mesh.SetSubMesh.
