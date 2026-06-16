<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SubMeshDescriptor-vertexCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Number of vertices used by the index buffer of this sub-mesh.

Together with firstVertex, this defines the range of vertices that are possibly used by this sub-mesh. You must set the vertex count so that `firstVertex+vertexCount` encompasses the whole range of vertices referenced by the index buffer. For example, if the index buffer contains vertex indices `5,6,100`, then the `firstVertex` needs to be `5`, while `vertexCount` needs to be `96` (100-5+1).

These values are important for any CPU-based mesh processing, for example dynamic batching or CPU skinning.

The bounds, firstVertex and vertexCount values are calculated automatically by Mesh.SetSubMesh, unless MeshUpdateFlags.DontRecalculateBounds flag is passed.

Additional resources: firstVertex.
