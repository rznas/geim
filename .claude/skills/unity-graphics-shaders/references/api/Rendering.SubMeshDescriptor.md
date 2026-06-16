<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SubMeshDescriptor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains information about a single sub-mesh of a Mesh.

Simple usage of Mesh scripting API involves using functions like Mesh.triangles, Mesh.vertices and so on.

For advanced use cases that require maximum performance, you can use the advanced API, which has functions like Mesh.SetSubMesh, Mesh.SetIndexBufferParams, and Mesh.SetIndexBufferData. This advanced API gives access to the underlying mesh data structures that primarily work on raw index buffers, vertex buffers and mesh subset data.

A single sub-mesh represents part of the Mesh that is using one material. Many Meshes use just one material, but some might use more. Information in a sub-mesh is composed of:

- indexStart - starting point inside the whole Mesh index buffer where the face index data of this subset is found. See Mesh.SetIndexBufferParams and Mesh.SetIndexBufferData.
- indexCount - index count for this sub-mesh. For example, in meshes with triangle topology, each triangle needs three indices.
- topology - topology of this sub-mesh, most often MeshTopology.Triangles.
- baseVertex - offset that is added to each value in the index buffer, to compute the final vertex index.
- bounds - bounding box of vertices in local space.
- firstVertex and vertexCount - range of vertices that are referenced by the index buffer of this sub-mesh.

The bounds, firstVertex and vertexCount values are calculated automatically by Mesh.SetSubMesh, unless MeshUpdateFlags.DontRecalculateBounds flag is passed.

Additional resources: Mesh.SetSubMesh, Mesh.GetSubMesh, Mesh.SetIndexBufferParams, Mesh.SetIndexBufferData.

### Properties

| Property | Description |
| --- | --- |
| baseVertex | Offset that is added to each value in the index buffer, to compute the final vertex index. |
| bounds | Bounding box of vertices in local space. |
| firstVertex | First vertex in the index buffer for this sub-mesh. |
| indexCount | Index count for this sub-mesh face data. |
| indexStart | Starting point inside the whole Mesh index buffer where the face index data is found. |
| topology | Face topology of this sub-mesh. |
| vertexCount | Number of vertices used by the index buffer of this sub-mesh. |

### Constructors

| Constructor | Description |
| --- | --- |
| SubMeshDescriptor | Create a submesh descriptor. |
