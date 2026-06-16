<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsTextureDescriptor-format.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The pixel format for the `GraphicsTexture` expressed as a GraphicsFormat.

Not all graphics cards support all uses across formats. Before enabling GraphicsTextureDescriptorFlags.RenderTarget on a GraphicsTexture, you can check if the `format` supports GraphicsFormatUsage.Render usage by using SystemInfo.IsFormatSupported.
