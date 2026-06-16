<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshData-subMeshCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The number of sub-meshes in the `MeshData`.

Each sub-mesh corresponds to a Material in a Renderer, such as MeshRenderer or SkinnedMeshRenderer. A sub-mesh consists of a list of triangles, which refer to a set of vertices. Vertices can be shared between multiple sub-meshes.

If the `MeshData` is writeable, you can set the number of sub-meshes using this property. If the `MeshData` is read-only, this property is read-only.

Setting the submesh count to 0 clears any generated Mesh LODs.

Additional resources: Mesh.subMeshCount, GetSubMesh, SetSubMesh, GetIndices, Mesh.AllocateWritableMeshData, Mesh.AcquireReadOnlyMeshData.
