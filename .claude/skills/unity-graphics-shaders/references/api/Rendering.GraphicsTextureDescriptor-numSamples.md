<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsTextureDescriptor-numSamples.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The number of samples per pixel in the GraphicsTexture.

Must always be 1 or more. A value greater than 1 indicates that the GraphicsTexture is using multi-sampled anti-aliasing, which requires GraphicsTextureDescriptorFlags.RenderTarget to be set. Anti-aliasing is not compatible with GraphicsTextureDescriptorFlags.RandomWriteTarget.
