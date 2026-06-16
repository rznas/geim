<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetBaseVertex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| submesh | The sub-mesh index. See subMeshCount. |

### Returns

**uint** The offset applied to all vertex indices of this sub-mesh.

### Description

Gets the base vertex index of the given `sub-mesh`.

The base vertex can be used to achieve meshes that are larger than 65535 vertices while using 16 bit index buffers, as long as each sub-mesh fits within its own 65535 vertex area. Alternatively, 32 bit index buffers can be used via indexFormat.

Additional resources: SetIndices.
