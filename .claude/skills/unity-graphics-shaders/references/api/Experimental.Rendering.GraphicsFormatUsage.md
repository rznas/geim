<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsFormatUsage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this format usages to figure out the capabilities of specific GraphicsFormat

Each graphics card may not support all usages across formats. Use SystemInfo.IsFormatSupported to check which usages the graphics card supports.

Additional resources: Texture2D, texture assets.

### Properties

| Property | Description |
| --- | --- |
| None | No flags are set. |
| Sample | Use this to create and sample textures. |
| Linear | Use this to sample textures with a linear filter. This is for regular texture sampling (non-shadow compare). Rentertextures created using ShadowSamplingMode.CompareDepths always support linear filtering on the comparison result. |
| Sparse | Use this to create sparse textures |
| Render | Use this to create and render to a rendertexture. |
| Blend | Use this to blend on a rendertexture. |
| GetPixels | Use this to get pixel data from a texture. |
| SetPixels | Use this to set pixel data to a texture. |
| SetPixels32 | Use this to set pixel data to a texture using `SetPixels32`. |
| ReadPixels | Use this to read back pixels data from a rendertexture. |
| LoadStore | Use this to perform resource load and store on a texture |
| MSAA2x | Use this to create and render to a MSAA 2X rendertexture. |
| MSAA4x | Use this to create and render to a MSAA 4X rendertexture. |
| MSAA8x | Use this to create and render to a MSAA 8X rendertexture. |
| StencilSampling | Use this to create and render to the Stencil sub element of a RenderTexture. |
