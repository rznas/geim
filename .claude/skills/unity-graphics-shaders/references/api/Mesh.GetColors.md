<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetColors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| colors | A list of vertex colors to populate. |

### Description

Gets the vertex colors of the Mesh.

The color at each index corresponds to the vertex with the same index.

Use this method instead of colors or colors32 if you control the life cycle of the list passed in and you want to avoid allocating a new array with every access.

Additional resources: AcquireReadOnlyMeshData function.
