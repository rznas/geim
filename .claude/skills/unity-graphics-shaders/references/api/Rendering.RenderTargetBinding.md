<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderTargetBinding.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes a render target with one or more color buffers, a depth/stencil buffer and the associated load/store-actions that are applied when the render target is active.

This data structure is similiar to RenderTargetSetup, but relies on a RenderTargetIdentifier to ensure compatability with CommandBuffer.SetRenderTarget.

To render to a specific mipmap level, cubemap face or depth slice the RenderTargetIdentifier should be created accordingly.

Note: the number of load- and store-actions specified for color buffers must be equal to the number of color buffers.

Additional resources: CommandBuffer.

### Properties

| Property | Description |
| --- | --- |
| colorLoadActions | Load actions for color buffers. |
| colorRenderTargets | Color buffers to use as render targets. |
| colorStoreActions | Store actions for color buffers. |
| depthLoadAction | Load action for the depth/stencil buffer. |
| depthRenderTarget | Depth/stencil buffer to use as render target. |
| depthStoreAction | Store action for the depth/stencil buffer. |
| flags | Optional flags. |

### Constructors

| Constructor | Description |
| --- | --- |
| RenderTargetBinding | Constructs RenderTargetBinding. |
