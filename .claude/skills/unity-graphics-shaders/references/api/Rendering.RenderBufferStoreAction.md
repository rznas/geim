<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderBufferStoreAction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This enum describes what should be done on the render target when the GPU is done rendering into it.

When the GPU is done rendering into a render target, this setting specifies the action that should be performed on the rendering results. Tile-based GPUs may get performance advantage if the store action is DontCare. For example, this setting can be useful if the depth buffer contents are not needed after rendering the frame.

Please note that not all platforms have load/store actions, so this setting might be ignored at runtime. Generally mobile-oriented graphics APIs (OpenGL ES, Metal) take advantage of these settings.

If you use `RenderBufferLoadAction.DontCare`, rendering might fail or produce artefacts because undefined pixels in the depth texture cause depth testing to fail. You can use LoadStoreActionDebugModeSettings to highlight undefined pixels.

### Properties

| Property | Description |
| --- | --- |
| Store | The RenderBuffer contents need to be stored to RAM. If the surface has MSAA enabled, this stores the non-resolved surface. |
| Resolve | Resolve the MSAA surface. |
| StoreAndResolve | Resolve the MSAA surface, but also store the multisampled version. |
| DontCare | The contents of the RenderBuffer are not needed and can be discarded. Tile-based GPUs will skip writing out the surface contents altogether, providing performance boost. |
