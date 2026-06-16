<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsTextureState.Initializing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The descriptor is initialized and the work to create the GraphicsTexture has been queued on the render thread.

If threaded texture creation is allowed, then the GraphicsTexture will first be created on a worker thread before transferring to the render thread.

Additional resources: GraphicsTextureDescriptor, GraphicsTexture.descriptor, Texture.allowThreadedTextureCreation.
