<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintUtility.GetBrushWorldSizeLimits.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| minBrushWorldSize | Returns the minimum Brush size, in world space units. |
| maxBrushWorldSize | Returns the maximum Brush size, in world space units. |
| terrainTileWorldSize | The size of a Terrain tile, in world space units. |
| terrainTileTextureResolutionPixels | The resolution of the Terrain tile texture the Brush edits, in pixels. |
| minBrushResolutionPixels | The minimum Brush resolution, in pixels. Default is 1 pixel. |
| maxBrushResolutionPixels | The maximum Brush resolution, in pixels. Default is 8192 pixels. |

### Description

Calculates the minimum and maximum Brush size limits, in world space.

Converts the minimum and maximum Brush pixel resolutions into the equivalent world space sizes.
