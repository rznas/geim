<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintUtility.CollectNormals.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| terrain | Reference Terrain tile. |
| boundsInTerrainSpace | The region in terrain space from which to collect normals. |
| extraBorderPixels | Number of extra border pixels required. |
| fillOutsideTerrain | Whether to fill empty space outside of Terrain tiles with data from the nearest tile. |

### Returns

**PaintContext** PaintContext containing the combined normalmap data for the specified region.

### Description

Helper function to set up a PaintContext that collects mesh normal data from one or more Terrain tiles.

CollectNormals identifies all of the normalmap pixels that are within `extraBorderPixels` of the bounds rectangle. The search is performed across adjacent connected Terrain tiles. The pixels are collected into a temporary render texture and stored in PaintContext.sourceRenderTexture.

 Important: there is no corresponding function to write modified normalmap data back to the Terrain tiles, because the normalmap is not stored; it is calculated from the heightmap.

 Once you are done using the sourceRenderTexture, you must call TerrainPaintUtility.ReleaseContextResources to release the RenderTexture resources.

 Additional resources: PaintContext.GatherNormals and PaintContext.
