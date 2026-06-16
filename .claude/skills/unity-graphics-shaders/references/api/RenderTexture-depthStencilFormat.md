<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture-depthStencilFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The format of the depth/stencil buffer.

The returned format is the actual format that is used when RenderTexture.Create is called. This format can be different than the depth/stencil format that was set on the RenderTexture if that format is not supported on the current platform or graphics API. RenderTexture will automatically try to use a compatible format with more bits. If the format is not supported and when no compatible format is found on this platform then the original format will be returned. This fallback to a compatible format can be disabled on a RenderTexture asset in the inspector.

Additional resources: RenderTexture.depth, RenderTextureDescriptor.depthStencilFormat, GraphicsFormatUtility.GetDepthStencilFormat, GraphicsFormat.
