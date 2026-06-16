<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.AddBlendShapeFrame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shapeName | Name of the blend shape to add a frame to. |
| frameWeight | Weight for the frame being added. |
| deltaVertices | Delta vertices for the frame being added. |
| deltaNormals | Delta normals for the frame being added. |
| deltaTangents | Delta tangents for the frame being added. |

### Description

Adds a new blend shape frame.

If blend shape name does not exist, then a new blend shape is created. Blend shape frames can only be added to a new blend shape, or the last blend shape. Usually there will be a single frame for a blend shape, but the range of blending [0-100%] may be split into multiple frames. Weight is assumed to be 100% when a shape only has one frame. Frame must be added in an increasing weight order for blend shapes having multiple frames. `deltaVertices`, `deltaNormals` and `deltaTangents` arrays must be of size = Mesh.vertexCount. Subtract Mesh vertices, normals or tangents to convert from frame full vectors to get deltas. `deltaNormals` or `deltaTangents` may be set to null if there are no normals or tangents for a frame.
