<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsTextureState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The state of a GraphicsTexture.

Describes the state of a GraphicsTexture as it is constructed, initialized, or destroyed on the render thread.

### Properties

| Property | Description |
| --- | --- |
| Constructed | The GraphicsTexture constructor has started execution. |
| Initializing | The descriptor is initialized and the work to create the GraphicsTexture has been queued on the render thread. |
| InitializedOnRenderThread | The GraphicsTexture has completed creation on the render thread. |
| DestroyQueued | The GraphicsTexture is queued for destruction on the render thread, but has not completed yet. |
| Destroyed | The GraphicsTexture has been completely destroyed on the render thread. |
