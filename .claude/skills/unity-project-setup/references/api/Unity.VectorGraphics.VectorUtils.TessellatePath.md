<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.VectorUtils.TessellatePath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| contour | The path to tessellate |
| pathProps | The path properties |
| tessellateOptions | The tessellation options |
| vertices | The resulting vertices |
| indices | The resulting triangles |

### Description

Tessellates a path.

The individual line segments generated during tessellation are made out of a set of ordered vertices. It is important to honor this ordering so joining and and capping connect properly with the existing vertices without generating dupes. The ordering assumed is as follows: The last two vertices of a piece must be such that the first is generated at the end with a positive half-thickness while the second vertex is at the end too but at a negative half-thickness. No assumptions are enforced for other vertices before the two last vertices.
