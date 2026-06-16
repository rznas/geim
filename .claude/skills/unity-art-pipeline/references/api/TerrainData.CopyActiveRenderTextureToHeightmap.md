<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainData.CopyActiveRenderTextureToHeightmap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sourceRect | The part of the active Render Texture to copy. |
| dest | The X and Y coordinates of the heightmap texture to copy into. |
| syncControl | Controls how CPU synchronization is performed. |

### Description

Copies the specified part of the active RenderTexture to the Terrain heightmap texture.

This functions calls DirtyHeightmapRegion internally and sends out the OnTerrainChanged message accordingly. The range of expected height values for the active RenderTexture is between `0` and `0.5`. This is unlike TerrainData.SetHeights, which expects height values between `0` and `1`. Additional resources: TerrainHeightmapSyncControl, DirtyHeightmapRegion, SyncHeightmap.
