<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainData.SetHoles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| xBase | First x index of Terrain holes samples to set. |
| yBase | First y index of Terrain holes samples to set. |
| holes | Array of Terrain holes samples to set (array indexed as [y,x]). |

### Description

Sets an array of Terrain holes samples.

Sets Terrain holes data using a two-dimensional array of Terrain holes samples. The samples are represented as bool values: `true` for surface and `false` for hole. The array dimensions define the area affected, which starts at `xBase` and `yBase`. The Terrain holes array is indexed as [y,x].

This method recomputes all LOD and vegetation information for the Terrain on each call, which can be computationally expensive. In interactive editing scenarios, it might be better to call TerrainData.SetHolesDelayLOD instead, followed by TerrainData.SyncTexture when the user completes an editing action.
