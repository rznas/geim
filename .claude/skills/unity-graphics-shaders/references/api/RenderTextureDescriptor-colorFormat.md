<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTextureDescriptor-colorFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The format of the RenderTarget is expressed as a RenderTextureFormat. Internally, this format is stored as a GraphicsFormat compatible with the current system (see SystemInfo.GetCompatibleFormat). Therefore, if you set a format and immediately get it again, it may return a different result from the one just set.
