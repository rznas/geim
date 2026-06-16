<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture-depth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The precision of the render texture's depth buffer in bits (0, 16, 24 and 32 are supported).

Set the format of the Depth/Stencil buffer. The selected format depends on the available formats on the platform and the desired format for 24bit depth. See GraphicsFormatUtility.GetDepthStencilFormat for more information on how the format is selected.

The property returns the actual number of bits for depth in the selected format. This can be different than the number of bits that was set if no format with that exact number of depth bits is available on the platform. RenderTexture.depthStencilFormat returns the actual format that was selected.

Set the format directly using RenderTexture.depthStencilFormat if you need to control exactly what format is used.

Additional resources: format, width, height.
