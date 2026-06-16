<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTextureFormat.Depth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A depth render texture format.

Depth format is used to render high precision "depth" value into a render texture. Which format is actually used depends on platform support and on the number of depth bits you request through the constructor.

You can also set an exact depth-stencil format with RenderTexture.depthStencilFormat or a RenderTexture constructor that takes GraphicsFormat. Use SystemInfo.IsFormatSupported to check your platform supports this.

When writing shaders that use or render into a depth texture, care must be taken to ensure that they work both on OpenGL and on Direct3D, see depth textures documentation.

Note that not all graphics cards support depth textures. Use SystemInfo.SupportsRenderTextureFormat to check for support.

Additional resources: RenderTexture class, SystemInfo.SupportsRenderTextureFormat.
