<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.SetNormals.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| inNormals | Per-vertex normals. |

### Description

Set the normals of the Mesh.

Additional resources: normals property.

### Parameters

| Parameter | Description |
| --- | --- |
| inNormals | Per-vertex normals. |
| start | Index of the first element to take from the input array. |
| length | Number of elements to take from the input array. |
| flags | Flags controlling the function behavior, see MeshUpdateFlags. |

### Description

Sets the vertex normals of the Mesh, using a part of the input array.

This method behaves as if you called SetNormals with an array that is a slice of the whole array, starting at `start` index and being of a given `length`. The resulting Mesh has `length` amount of vertices.
