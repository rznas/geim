<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetTangents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tangents | A list of tangents to populate. |

### Description

Gets the tangents of the Mesh.

The tangent at each index corresponds to the vertex with the same index.

Use this method instead of tangents if you control the life cycle of the list passed in and you want to avoid allocating a new array with every access.

Additional resources: AcquireReadOnlyMeshData function.
