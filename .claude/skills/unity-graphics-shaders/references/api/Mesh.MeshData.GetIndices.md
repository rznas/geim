<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshData.GetIndices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| outIndices | The destination indices array. |
| submesh | The index of the sub-mesh to get the indices for. See subMeshCount. |
| applyBaseVertex | If true, Unity will apply base vertex offset to the returned indices. The default value is true. |
| meshlod | The Mesh LOD index to get the indices for. Use -1 to get the entire submesh. See also: lodCount. |

### Description

Populates an array with the indices for a given sub-mesh from the `MeshData`.

The destination array must have enough elements to hold the index buffer of the given sub-mesh. See GetSubMesh and SubMeshDescriptor.indexCount. Additional resources: Mesh.GetIndices, subMeshCount, GetSubMesh.
