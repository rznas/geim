<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainData.SetHeightsDelayLOD.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| xBase | First x index of heightmap samples to set. |
| yBase | First y index of heightmap samples to set. |
| heights | Array of heightmap samples to set (values range from 0 to 1, array indexed as [y,x]). |

### Description

Sets an array of heightmap samples.

Sets heightmap data using a two dimensional array of heightmap samples. The samples are represented as float values ranging from 0 to 1. The area affected is defined by the array dimensions and starts at xBase and yBase. The heights array is indexed as [y,x].

Unlike TerrainData.SetHeights, this method does not update the LOD information for the terrain, or any trees/vegetation objects; this means the terrain may be temporarily rendered at an inappropriately high level of detail, but makes the method fast enough to be used in interactive editing scenarios. Once modifications to the terrain have been completed - for example, when the user releases the mouse button - call TerrainData.SyncHeightmap to update all the LOD and vegetation information.
