<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.SetTangents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| inTangents | Per-vertex tangents. |

### Description

Set the tangents of the Mesh.

Additional resources: tangents property.

### Parameters

| Parameter | Description |
| --- | --- |
| inTangents | Per-vertex tangents. |
| start | Index of the first element to take from the input array. |
| length | Number of elements to take from the input array. |
| flags | Flags controlling the function behavior, see MeshUpdateFlags. |

### Description

Sets the tangents of the Mesh, using a part of the input array.

This method behaves as if you called SetTangents with an array that is a slice of the whole array, starting at `start` index and being of a given `length`. The resulting Mesh has `length` amount of vertices.
