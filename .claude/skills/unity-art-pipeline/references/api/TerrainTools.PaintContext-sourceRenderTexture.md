<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintContext-sourceRenderTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

(Read Only) Render target that stores the original data from the Terrain tiles.

This RenderTexture contains all of the data collected from all Terrain tiles that intersect the PaintContext. The RenderTexture is created by PaintContext.CreateRenderTargets, and populated by one of the Gather functions (PaintContext.GatherHeightmap, PaintContext.GatherAlphamap or PaintContext.GatherNormals).

 Additional resources: PaintContext, PaintContext.destinationRenderTexture.
