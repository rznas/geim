<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SubMeshDescriptor-firstVertex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

First vertex in the index buffer for this sub-mesh.

Together with vertexCount, this defines the range of vertices that are possibly used by this sub-mesh. These values are important for any CPU-based mesh processing that would be done, for example dynamic batching or CPU skinning.

The bounds, firstVertex and vertexCount values are calculated automatically by Mesh.SetSubMesh, unless MeshUpdateFlags.DontRecalculateBounds flag is passed.

Additional resources: vertexCount.
