<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintContext.GatherAlphamap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| inputLayer | TerrainLayer used for painting. |
| addLayerIfDoesntExist | Set to true to specify that the inputLayer is added to the terrain if it does not already exist. Set to false to specify that terrain layers are not added to the terrain. |

### Description

Gathers the alphamap information into `sourceRenderTexture`.

This function collects the alphamap data from all Terrain tiles in the PaintContext into `sourceRenderTexture`.

 This function is called internally by TerrainPaintUtility.BeginPaintTexture.

 Additional resources: PaintContext.ScatterAlphamap.
