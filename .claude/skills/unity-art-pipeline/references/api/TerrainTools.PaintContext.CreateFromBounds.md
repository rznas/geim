<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintContext.CreateFromBounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| terrain | Terrain that defines terrain space for this PaintContext. |
| boundsInTerrainSpace | Terrain space bounds to edit in the target terrain texture. |
| inputTextureWidth | Width of the input Terrain Texture for all connected Terrains. |
| inputTextureHeight | Height of the input Terrain Texture for all connected Terrains. |
| extraBorderPixels | Number of extra border pixels required. The default value is 0. |
| sharedBoundaryTexel | Whether to stretch the Textures so that edge texels lie on the Terrain boundary, and are shared with connected Terrains. |
| fillOutsideTerrain | Whether to fill empty space outside of the Terrain tiles with data from the nearest tile. |

### Description

Constructs a PaintContext that you can use to edit a texture on a Terrain, in the region defined by boundsInTerrainSpace and extraBorderPixels.

This function calculates a pixelRect from `boundsInTerrainSpace` and `extraBorderPixels`, and then constructs a PaintContext from the pixelRect.

 This function is called internally by TerrainPaintUtility.BeginPaintHeightmap, TerrainPaintUtility.BeginPaintTexture and TerrainPaintUtility.CollectNormals.

 Additional resources: PaintContext.
