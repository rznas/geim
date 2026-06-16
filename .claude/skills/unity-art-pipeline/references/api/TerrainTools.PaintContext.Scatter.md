<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintContext.Scatter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| terrainDest | Function returning the RenderTexture to be written for each Terrain. |
| blitMaterial | The material used to copy the data. If null, the default blit material is used. |
| blitPass | The material pass used to copy the data. Its default value is 0. |
| beforeBlit | An optional action to call before copying to each Terrain. |
| afterBlit | An optional action to call after copying to each Terrain. |

### Description

Applies an edited PaintContext by copying modifications back to user-specified RenderTextures for the source Terrain tiles.

After the edits to a PaintContext are complete, this function applies the modified data in `destinationRenderTexture` to the data stored for each Terrain. Scatter performs this copy to a set of RenderTextures, which is specified by `terrainDest`.
 
 This function uses the following steps to scatter to each Terrain in the PaintContext:
 1) Calls `terrainDest` to retrieve the target RenderTexture.
 2) Calls `beforeBlit`.
 3) Uses `blitMaterial` and `blitPass` to copy the `destinationRenderTexture` into the target RenderTexture.
 4) Calls `afterBlit`.
 
 Additional resources: PaintContext, PaintContext.Gather.
