<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo.GetGraphicsFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| format | The DefaultFormat format to look up. |

### Description

Returns the platform-specific GraphicsFormat that is associated with the DefaultFormat.

You can create a RenderTexture with DefaultFormat.DepthStencil by setting the resulting GraphicsFormat to RenderTexture.depthStencilFormat, RenderTextureDescriptor.depthStencilFormat or by using one of the constructors.

To create a RenderTexture that you can use as a shadow map, set the ShadowSamplingMode using RenderTextureDescriptor.shadowSamplingMode. If you only set the depth or stencil format and not the ShadowSamplingMode then you will not have a valid shadow map.

Additional resources: GraphicsFormat enum and DefaultFormat.
