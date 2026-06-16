<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture-enableRandomWrite.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable random access write into this render texture on Shader Model 5.0 level shaders.

Shader Model 5.0 level pixel or compute shaders can write into arbitrary locations of some textures, called "unordered access views" in UsingDX11GL3Features. Set this flag before creating your render texture to enable this capability.

When a texture has this flag set, it can be written into as one RWTexture* resources in HLSL or image resources in GLSL. It can also be set as random access write target for pixel shaders using Graphics.SetRandomWriteTarget.

Use SystemInfo.SupportsRandomWriteOnRenderTextureFormat to validate if a given format can be used as this depends on the graphics API/hardware/driver.

Additional resources: Graphics.SetRandomWriteTarget, UsingDX11GL3Features SystemInfo.SupportsRandomWriteOnRenderTextureFormat.
