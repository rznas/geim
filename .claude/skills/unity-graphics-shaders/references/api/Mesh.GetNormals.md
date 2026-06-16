<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetNormals.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| normals | A list of vertex normals to populate. |

### Description

Gets the vertex normals of the Mesh.

The normal at each index corresponds to the vertex with the same index.

Use this method instead of normals if you control the life cycle of the list passed in and you want to avoid allocating a new array with every access.

Additional resources: AcquireReadOnlyMeshData function.
