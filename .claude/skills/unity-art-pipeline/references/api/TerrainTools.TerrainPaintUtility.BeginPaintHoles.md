<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintUtility.BeginPaintHoles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| terrain | Reference Terrain tile. |
| boundsInTerrainSpace | The region in Terrain space to edit. |
| extraBorderPixels | Number of extra border pixels required. |
| fillOutsideTerrain | Whether to fill empty space outside of Terrain tiles with data from the nearest tile. |

### Returns

**PaintContext** PaintContext that contains the combined Terrain holes data for the specified region.

### Description

Helper function to set up a PaintContext for modifying the Terrain holes of one or more Terrain tiles.

BeginPaintHoles identifies all of the Terrain holes pixels that are within `extraBorderPixels` of the bounds rectangle. The search is performed across adjacent connected Terrain tiles. The pixels are collected into a temporary render texture and stored in PaintContext.sourceRenderTexture.

 After you call this function, you can write new values into PaintContext.destinationRenderTexture to modify the Terrain holes. Then, you may complete the modification by calling TerrainPaintUtility.EndPaintHoles to copy the modified data back to the Terrain tiles. Alteratively, you may cancel the modification by calling TerrainPaintUtility.ReleaseContextResources to release the RenderTexture resources.

 Additional resources: TerrainPaintUtility.EndPaintHoles and PaintContext.
