<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTargetSetup-depthSlice.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Slice of a Texture3D or Texture2DArray to set as a render target.

Some platforms (e.g. D3D11) support setting -1 as the slice, which binds whole render target for rendering. Then typically a geometry shader is used to direct rendering into the appropriate slice.
