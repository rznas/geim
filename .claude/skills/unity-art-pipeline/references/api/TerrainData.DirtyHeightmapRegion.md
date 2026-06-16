<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainData.DirtyHeightmapRegion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| region | The rectangular region to mark as dirty. |
| syncControl | Controls how CPU synchronization is performed. |

### Description

Marks the specified part of the heightmap as dirty.

Use this function only after you manually change the GPU part of the heightmap texture by rendering into it, or by using Graphics.CopyTexture. Use the `syncControl` parameter to control how you want Unity to perform CPU synchronization. Unity queues the reading back of unsynchronized data (height data, LOD data, or both) until the next call to SyncHeightmap.

If the current active RenderTexture contains your changes, and you want to copy a part of it into the heightmap texture, use CopyActiveRenderTextureToHeightmap instead.

This function sends out the OnTerrainChanged message with TerrainChangedFlags.Heightmap if you pass TerrainHeightmapSyncControl.HeightAndLod to the `syncControl` parameter. If you pass TerrainHeightmapSyncControl.Height to the `syncControl` parameter, it sends out the OnTerrainChanged message with TerrainChangedFlags.DelayedHeightmapUpdate.
