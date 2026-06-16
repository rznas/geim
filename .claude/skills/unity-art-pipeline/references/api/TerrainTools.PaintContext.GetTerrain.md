<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintContext.GetTerrain.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| terrainIndex | Index of the terrain. |

### Returns

**Terrain** Returns the Terrain object.

### Description

Retrieves a Terrain from the PaintContext.

When painting across a border, the PaintContext can refer to several Terrain tiles. GetTerrain is used to access those Terrain tiles. terrainIndex must be between 0 and PaintContext.terrainCount - 1. Additional resources: PaintContext.GetClippedPixelRectInTerrainPixels and PaintContext.GetClippedPixelRectInRenderTexturePixels.
