<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTextureDescriptor-stencilFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The format of the stencil data that you can encapsulate within a RenderTexture.

Specifying this property creates a stencil element for the RenderTexture and sets its format. This allows for stencil data to be bound as a Texture to all shader types for the platforms that support it. This property does not specify the format of the stencil buffer, which is constrained by the depth buffer format specified in RenderTexture.depth.

Currently, most platforms only support `R8_UInt` (DirectX11, DirectX12), while PS4 also supports `R8_UNorm`.

Additional resources: GraphicsFormat, RenderTexture.depth.
