<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintContext.CreateRenderTargets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| colorFormat | Render Texture format. |

### Description

Creates the `sourceRenderTexture` and `destinationRenderTexture`.

The render textures are created at a resolution matching the current PaintContext.pixelRect, using the specified RenderTextureFormat.

 This function is called internally by TerrainPaintUtility.BeginPaintHeightmap, TerrainPaintUtility.BeginPaintTexture and TerrainPaintUtility.CollectNormals.

 Additional resources: PaintContext.destinationRenderTexture, PaintContext.sourceRenderTexture
