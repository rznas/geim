<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainData.SetHeights.html
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

This method recomputes all the LOD and vegetation information for the terrain on each call, which can be computationally expensive. In interactive editing scenarios, it may be better to call TerrainData.SetHeightsDelayLOD instead, followed by TerrainData.SyncHeightmap when the user completes an editing action.
