<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintUtility.BeginPaintHeightmap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| terrain | Reference Terrain tile. |
| boundsInTerrainSpace | The region in terrain space to edit. |
| extraBorderPixels | Number of extra border pixels required. |
| fillOutsideTerrain | Whether to fill empty space outside of Terrain tiles with data from the nearest tile. |

### Returns

**PaintContext** PaintContext containing the combined heightmap data for the specified region.

### Description

Helper function to set up a PaintContext for modifying the heightmap of one or more Terrain tiles.

BeginPaintHeightmap identifies all of the heightmap pixels that are within `extraBorderPixels` of the bounds rectangle. The search is performed across adjacent connected Terrain tiles. The pixels are collected into a temporary render texture and stored in PaintContext.sourceRenderTexture.

 After calling this function, you may modify the heightmap by writing the new values into PaintContext.destinationRenderTexture. Then, you may complete the modification by calling TerrainPaintUtility.EndPaintHeightmap to copy the modified data back to the Terrain tiles. Alteratively, you may cancel the modification by calling TerrainPaintUtility.ReleaseContextResources to release the RenderTexture resources.

 Additional resources: TerrainPaintUtility.EndPaintHeightmap and PaintContext.
