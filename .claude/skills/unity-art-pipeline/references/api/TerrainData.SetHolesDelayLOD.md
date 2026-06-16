<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainData.SetHolesDelayLOD.html
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

Unlike TerrainData.SetHoles, this method does not update LOD information for the Terrain, or any tree/vegetation objects; this means that some tree/vegetation objects might still be present over holes, but makes the method fast enough to be used in interactive editing scenarios. After modifications to the Terrain are complete - for example, when the user releases the mouse button - call TerrainData.SyncTexture and use TerrainData.HolesTextureName as a Texture name to update all LOD and vegetation information.
