<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.UploadMeshData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| markNoLongerReadable | Frees up system memory copy of mesh data when set to `true`. |

### Description

Upload previously done Mesh modifications to the graphics API.

When creating or modifying a Mesh from code (using vertices, normals, triangles etc. properties), the Mesh data is internally marked as "modified" and is sent to the graphics API next time the Mesh is rendered.

Call UploadMeshData to immediately send the modified data to the graphics API, to avoid a possible problem later. Passing `true` in a `markNoLongerReadable` argument makes Mesh data not be readable from the script anymore, and frees up system memory copy of the data.

Additional resources: vertices, normals, triangles, MarkDynamic.
