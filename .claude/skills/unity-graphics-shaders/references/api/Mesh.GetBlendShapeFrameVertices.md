<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetBlendShapeFrameVertices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shapeIndex | The shape index of the frame. |
| frameIndex | The frame index to get the weight from. |
| deltaVertices | Delta vertices output array for the frame being retreived. |
| deltaNormals | Delta normals output array for the frame being retreived. |
| deltaTangents | Delta tangents output array for the frame being retreived. |

### Description

Retreives `deltaVertices`, `deltaNormals` and `deltaTangents` of a blend shape frame.

`deltaVetrices`, `deltaNormals` and `deltaTangents` arrays must be of size = Mesh.vertexCount. Add Mesh vertices, normals or tangents to convert from frame deltas to full vectors. `deltaNormals` or `deltaTangents` may be set to null if there is no normals or tangents to be retreived for a frame.
