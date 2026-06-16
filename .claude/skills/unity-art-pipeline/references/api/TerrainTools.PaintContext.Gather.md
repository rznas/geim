<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintContext.Gather.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| terrainSource | A function that returns the Texture data to collect from each Terrain. |
| defaultColor | The default color for `sourceRenderTexture`. |
| blitMaterial | The material used to copy the data. If null, the default blit material is used. |
| blitPass | The material pass used to copy the data. |
| beforeBlit | An optional action to call before copying from each Terrain. The default is null. |
| afterBlit | An optional action to call after copying from each Terrain. The default is null. |

### Description

Gathers user-specified Texture data into `sourceRenderTexture`.

This function collects Texture data from all Terrain tiles in the PaintContext, and merges that data into `sourceRenderTexture`. The `terrainSource` function specifies what data to collect from each Terrain. Gather assumes that the Texture data, which `terrainSource` returns, is mapped over the Terrain tile in a manner similar to the Heightmap and Alphamaps.
 
 First, the function clears `sourceRenderTexture` to `defaultColor`.
 Then, it uses the following steps to gather each Terrain in the PaintContext:
 1) Calls `terrainSource` to retrieve the Texture.
 2) Calls `beforeBlit`.
 3) Uses `blitMaterial` and `blitPass` to copy The Texture into `sourceRenderTexture`.
 4) Calls `afterBlit`.
 
 Additional resources: PaintContext, PaintContext.Scatter.
