<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain.SetNeighbors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| left | The Terrain tile to the left is in the negative X direction. |
| top | The Terrain tile to the top is in the positive Z direction. |
| right | The Terrain tile to the right is in the positive X direction. |
| bottom | The Terrain tile to the bottom is in the negative Z direction. |

### Description

Lets you set up the connection between neighboring Terrain tiles. This ensures LOD matches up on neighboring Terrain tiles.

Note that it isn't enough to call this function on one Terrain; you need to set the neighbors of each Terrain.
