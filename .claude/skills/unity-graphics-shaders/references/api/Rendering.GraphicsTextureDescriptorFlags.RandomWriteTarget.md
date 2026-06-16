<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsTextureDescriptorFlags.RandomWriteTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows random write access into this GraphicsTexture on Shader Model 5.0 level shaders.

Allows Shader Model 5.0 level pixel or compute shaders to write into arbitrary locations on this texture, called "unordered access views" in UsingDX11GL3Features. Note that this flag does nothing if GraphicsTextureDescriptorFlags.RenderTarget is not also set. GraphicsTextureDescriptor.numSamples must be 1, as random write access is not compatible with anti-aliasing.

Additional resources: RenderTexture.enableRandomWrite.
