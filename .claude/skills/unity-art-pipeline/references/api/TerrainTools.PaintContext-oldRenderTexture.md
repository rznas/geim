<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintContext-oldRenderTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

(Read Only) The value of RenderTexture.active at the time CreateRenderTargets is called.

PaintContext.Cleanup uses this value to restore the active RenderTexture to its original value. In some cases, it may be necessary to manually restore the RenderTexture before calling Cleanup:
 `RenderTexture.active = PaintContext.oldRenderTexture;`


 Additional resources: PaintContext, PaintContext.Cleanup
