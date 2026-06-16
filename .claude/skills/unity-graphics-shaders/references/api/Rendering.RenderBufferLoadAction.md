<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderBufferLoadAction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This enum describes what should be done on the render target when it is activated (loaded).

When the GPU starts rendering into a render target, this setting specifies the action that should be performed on the existing contents of the surface. Tile-based GPUs may get performance advantage if the load action is Clear or DontCare. The user should avoid using RenderBufferLoadAction.Load whenever possible.

Please note that not all platforms have load/store actions, so this setting might be ignored at runtime. Generally mobile-oriented graphics APIs (OpenGL ES, Metal) take advantage of these settings.

If you use `RenderBufferLoadAction.DontCare`, rendering might fail or produce artefacts because undefined pixels in the depth texture cause depth testing to fail. You can use LoadStoreActionDebugModeSettings to highlight undefined pixels.

### Properties

| Property | Description |
| --- | --- |
| Load | When this RenderBuffer is activated, preserve the existing contents of it. This setting is expensive on tile-based GPUs and should be avoided whenever possible. |
| Clear | Upon activating the render buffer, clear its contents. Currently only works together with the RenderPass API. |
| DontCare | When this RenderBuffer is activated, the GPU is instructed not to care about the existing contents of that RenderBuffer. On tile-based GPUs this means that the RenderBuffer contents do not need to be loaded into the tile memory, providing a performance boost. |
