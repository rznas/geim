<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderTargetFlags.ReadOnlyDepthStencil.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Both depth and stencil buffers bound for rendering may be bound as samplable textures to the graphics pipeline: some platforms require the depth and stencil buffers to be set to read-only mode in such cases (D3D11, Vulkan). This flag can be used for both packed depth-stencil as well as separate depth-stencil formats. This flag is a bitwise combination of RenderTargetFlags.ReadOnlyDepth and RenderTargetFlags.ReadOnlyStencil.
