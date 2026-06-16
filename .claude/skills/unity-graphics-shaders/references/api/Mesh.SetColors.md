<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.SetColors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| inColors | Per-vertex colors. |

### Description

Set the per-vertex colors of the Mesh.

Unity internally stores Mesh data in the format matching the data you supply. For example, if you pass a Color32 array Unity will store each color in 4 bytes (low precision, 0..1 range); whereas if you pass a Color array, Unity stores each color in 16 bytes (full 32 bit float per color channel).

If you use a `List`, Unity copies the values. If you change the `List`, the Mesh colors won't change unless you call `Mesh.SetColors` again.

Additional resources: colors, colors32 properties.

### Parameters

| Parameter | Description |
| --- | --- |
| inColors | Per-vertex colors. |
| start | Index of the first element to take from the input array. |
| length | Number of elements to take from the input array. |
| flags | Flags controlling the function behavior, see MeshUpdateFlags. |

### Description

Sets the per-vertex colors of the Mesh, using a part of the input array.

This method behaves as if you called SetColors with an array that is a slice of the whole array, starting at `start` index and being of a given `length`. The resulting Mesh has `length` amount of vertices.
