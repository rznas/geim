<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintContext.GetClippedPixelRectInRenderTexturePixels.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| terrainIndex | Index of the Terrain. |

### Returns

**RectInt** Returns the clipped pixel rectangle.

### Description

Retrieves the clipped pixel rectangle for a Terrain, relative to the PaintContext render textures.

When painting across a border, the PaintContext can refer to several Terrain tiles. GetClippedPixelRectInTerrainPixels returns the PaintContext.pixelRect clipped to the specified Terrain, in the pixel coordinates of PaintContext.sourceRenderTexture and PaintContext.destinationRenderTexture. terrainIndex must be between 0 and PaintContext.terrainCount - 1. Additional resources: PaintContext.GetTerrain.
