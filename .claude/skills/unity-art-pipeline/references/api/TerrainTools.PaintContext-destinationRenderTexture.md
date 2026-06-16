<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintContext-destinationRenderTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

(Read Only) RenderTexture that an edit operation writes to modify the data.

This RenderTexture stores the modified data represented by a PaintContext. A terrain tool will typically read from `sourceRenderTexture`, modify the data, and write to `destinationRenderTexture`. The Scatter functions (PaintContext.ScatterHeightmap or PaintContext.ScatterAlphamap) read from `destinationRenderTexture` to distribute the modified data back to the source Terrain tiles. `destinationRenderTexture` is created by PaintContext.CreateRenderTargets, with size and format matching `sourceRenderTexture`.

 Additional resources: PaintContext, PaintContext.sourceRenderTexture.
