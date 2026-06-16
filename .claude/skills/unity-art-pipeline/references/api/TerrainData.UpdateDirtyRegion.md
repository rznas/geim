<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainData.UpdateDirtyRegion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| x | Start X position of the dirty heightmap region. |
| y | Start Y position of the dirty heightmap region. |
| width | Width of the dirty heightmap region. |
| height | Width of the dirty heightmap region. |
| syncHeightmapTextureImmediately | Update immediately, instead of deferring the update. |

### Description

Triggers an update to integrate modifications done to the heightmap outside of unity.

This function is obsolete. Use either CopyActiveRenderTextureToHeightmap or DirtyHeightmapRegion instead.

Invoke this function whenever custom Terrain heightmap paint tools modify the heightmap, to let Unity integrate the changes such as physics and collision updates.
