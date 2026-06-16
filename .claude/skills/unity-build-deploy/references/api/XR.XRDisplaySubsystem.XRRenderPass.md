<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem.XRRenderPass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains configuration parameters about which view into the Scene the renderer should rasterize, and a render target (which can be a texture array) for the result of the rasterization.

An XRRenderPass can contain more than one XRRenderParameter (viewpoints that the render pipeline renders to the output texture as either different viewports or texture array slices). The render pipeline must query each child XRRenderParameter via GetRenderParameter. The most optimal way to implement an XRRenderPass is to cull first, and then submit draw calls once for the resulting objects. You can also use techniques such as instanced rendering to optimize XRRenderPasses that contain more than one XRRenderParameter.

XRRenderPass is typically consumed by a scriptable rendering pipeline.

### Properties

| Property | Description |
| --- | --- |
| cullingPassIndex | An index that a render pipeline can pass to XRDisplaySubsystem.GetCullingParameters to obtain culling information. |
| foveatedRenderingInfo | A pointer to a native struct containing platform-specific data for foveated rendering. |
| hasMotionVectorPass | A boolean indicating if this render pass contains a motion-vector generation pass. |
| motionVectorRenderTarget | The output render-texture target for the motion-vector generation render pass. |
| motionVectorRenderTargetDesc | The render texture description for the target texture for the motion-vector render pass. |
| renderPassIndex | The index of the render pass (originally passed in to XRDisplaySubsystem.GetRenderPass). |
| renderTarget | The output target for the render pass. |
| renderTargetDesc | Descriptor that can be passed to RenderTexture.GetTemporary to create temporary textures that match the XR Display render target. |
| renderTargetScaledHeight | The current, scaled height of the XRRenderPass.renderTarget for this renderPass. |
| renderTargetScaledWidth | The current, scaled width of the XRRenderPass.renderTarget for this renderPass. |
| shouldFillOutDepth | When this is false an optimal renderer can avoid resolving the depth buffer. |
| spaceWarpRightHandedNDC | When true, the SpaceWarp motion vector data is in the right-handed normalized device coordinate (NDC) space. When false, the motion vector data is in the left-handed NDC space. |

### Public Methods

| Method | Description |
| --- | --- |
| GetRenderParameter | Gets an XRRenderParameter for a specific XRRenderPass. |
| GetRenderParameterCount | The number of XRRenderParameter entries for this XRRenderPass. |
