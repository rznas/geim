<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BillboardAsset.GetIndices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| indices | The list that receives the array. |

### Description

Get the indices of the billboard mesh.

Billboard meshes are always made of triangles. Specify the index of each vertex (in the vertices array) for each triangle. The second overload guarantees no memory allocation happening if the list capacity is big enough to hold the data.

Additional resources: BillboardAsset, SetIndices.
