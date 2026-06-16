<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTextureDescriptor-depthBufferBits.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The precision of the render texture's depth buffer in bits (0, 16, 24 and 32 are supported).

The minimum number of bits used for depth in the Depth/Stencil buffer format.

The actual format of the depth/stencil buffer that is selected based on the given number of bits can be different per platform or graphics API. Read more about the decision tree here Additional resources: RenderTexture.depth. Additional resources: RenderTexture.depthStencilFormat returns the actual format that was selected.

The property returns the actual number of bits for depth in the selected format. This can be different than the number of bits that was set if no format with that exact number of depth bits is available on the platform.
