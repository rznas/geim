<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainHeightmapSyncControl.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls what Terrain heightmap data to synchronize when there are changes to the heightmap texture.

Additional resources: TerrainData.CopyActiveRenderTextureToHeightmap, TerrainData.DirtyHeightmapRegion, TerrainData.SyncHeightmap.

### Properties

| Property | Description |
| --- | --- |
| None | Does not synchronize the height data nor the LOD data. |
| HeightOnly | Synchronizes only height data of the heightmap texture from the GPU back to CPU memory. |
| HeightAndLod | Synchronizes height data of the heightmap texture from the GPU back to CPU memory. Then computes LOD data, used for determining the tessellation level, from the height data. |
