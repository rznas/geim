<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BuiltinShaderDefine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines set by editor when compiling shaders, based on the target platform and GraphicsTier.

These defines reflect the availability of platform-specific features (such as BuiltinShaderDefine.UNITY_ASTC_NORMALMAP_ENCODING) and current graphics APIs (such as BuiltinShaderDefine.SHADER_API_DESKTOP).

The `BuiltinShaderDefine`s of a given variant are made available for scriptable shader stripping via PlatformKeywordSet.

Additional resources: GraphicsSettings.HasShaderDefine.

```csharp
using UnityEditor;
using UnityEditor.Rendering;
using UnityEngine;
using UnityEngine.Rendering;

// Adds a new Editor menu item called Example. Select Example > PrintLightModeTagExample
// from the Editor menu to print all shader defines Unity adds when compiling a shader
// for the current build target and the Vulkan API.
public class PrintBuiltInDefines
{
    public const ShaderCompilerPlatform kTargetPlatform = ShaderCompilerPlatform.Vulkan;

    [MenuItem("Example/Print built-in defines")]
    public static void Print()
    {
        // Get current build target
        BuildTarget currentBuildTarget = EditorUserBuildSettings.activeBuildTarget;
        
        // Collect defines from the build target and platform
        BuiltinShaderDefine[] defines = ShaderUtil.GetShaderPlatformKeywordsForBuildTarget(kTargetPlatform, currentBuildTarget);

        // Print the defines
        string definesAsString = string.Join(' ', defines);
        string message = $"Built-in defines for compiler platform {kTargetPlatform} and active build target ({currentBuildTarget}): {definesAsString}";
        Debug.Log(message);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| UNITY_NO_DXT5nm | UNITY_NO_DXT5nm is set when compiling shader for platform that do not support DXT5NM, meaning that normal maps will be encoded in RGB instead. |
| UNITY_NO_RGBM | UNITY_NO_RGBM is set when compiling shader for platform that do not support RGBM, so dLDR will be used instead. |
| UNITY_ENABLE_REFLECTION_BUFFERS | UNITY_ENABLE_REFLECTION_BUFFERS is set when deferred shading renders reflection probes in deferred mode. With this option set reflections are rendered into a per-pixel buffer. This is similar to the way lights are rendered into a per-pixel buffer. UNITY_ENABLE_REFLECTION_BUFFERS is on by default when using deferred shading, but you can turn it off by setting “No support” for the Deferred Reflections shader option in Graphics Settings. When the setting is off, reflection probes are rendered per-object, similar to the way forward rendering works. |
| UNITY_FRAMEBUFFER_FETCH_AVAILABLE | UNITY_FRAMEBUFFER_FETCH_AVAILABLE is set when compiling shaders for platforms where framebuffer fetch is potentially available. |
| UNITY_ENABLE_NATIVE_SHADOW_LOOKUPS | UNITY_ENABLE_NATIVE_SHADOW_LOOKUPS enables use of built-in shadow comparison samplers on OpenGL ES 2.0. |
| UNITY_METAL_SHADOWS_USE_POINT_FILTERING | UNITY_METAL_SHADOWS_USE_POINT_FILTERING is set if shadow sampler should use point filtering on iOS Metal. |
| UNITY_NO_SCREENSPACE_SHADOWS | UNITY_NO_SCREENSPACE_SHADOWS is set when screenspace cascaded shadow maps are disabled. |
| UNITY_USE_DITHER_MASK_FOR_ALPHABLENDED_SHADOWS | UNITY_USE_DITHER_MASK_FOR_ALPHABLENDED_SHADOWS is set when Semitransparent Shadows are enabled. |
| UNITY_PBS_USE_BRDF1 | UNITY_PBS_USE_BRDF1 is set if Standard Shader BRDF1 should be used. |
| UNITY_PBS_USE_BRDF2 | UNITY_PBS_USE_BRDF2 is set if Standard Shader BRDF2 should be used. |
| UNITY_PBS_USE_BRDF3 | UNITY_PBS_USE_BRDF3 is set if Standard Shader BRDF3 should be used. |
| UNITY_SPECCUBE_BOX_PROJECTION | UNITY_SPECCUBE_BLENDING is set if Reflection Probes Box Projection is enabled. |
| UNITY_SPECCUBE_BLENDING | UNITY_SPECCUBE_BLENDING is set if Reflection Probes Blending is enabled. |
| UNITY_ENABLE_DETAIL_NORMALMAP | UNITY_ENABLE_DETAIL_NORMALMAP is set if Detail Normal Map should be sampled if assigned. |
| SHADER_API_MOBILE | SHADER_API_MOBILE is set when compiling shader for mobile platforms. |
| SHADER_API_DESKTOP | SHADER_API_DESKTOP is set when compiling shader for "desktop" platforms. |
| UNITY_HARDWARE_TIER1 | UNITY_HARDWARE_TIER1 is set when compiling shaders for GraphicsTier.Tier1. |
| UNITY_HARDWARE_TIER2 | UNITY_HARDWARE_TIER2 is set when compiling shaders for GraphicsTier.Tier2. |
| UNITY_HARDWARE_TIER3 | UNITY_HARDWARE_TIER3 is set when compiling shaders for GraphicsTier.Tier3. |
| UNITY_COLORSPACE_GAMMA | UNITY_COLORSPACE_GAMMA is set when compiling shaders for Gamma Color Space. |
| UNITY_LIGHT_PROBE_PROXY_VOLUME | UNITY_LIGHT_PROBE_PROXY_VOLUME is set when Light Probe Proxy Volume feature is supported by the current graphics API and is enabled in the Graphics Tier settings. You can only set a Graphics Tier in the Built-in Render Pipeline. |
| UNITY_LIGHTMAP_DLDR_ENCODING | UNITY_LIGHTMAP_DLDR_ENCODING is set when lightmap textures are using double LDR encoding to store the values in the texture. |
| UNITY_LIGHTMAP_RGBM_ENCODING | UNITY_LIGHTMAP_RGBM_ENCODING is set when lightmap textures are using RGBM encoding to store the values in the texture. |
| UNITY_LIGHTMAP_FULL_HDR | UNITY_LIGHTMAP_FULL_HDR is set when lightmap textures are not using any encoding to store the values in the texture. |
| UNITY_VIRTUAL_TEXTURING | Is virtual texturing enabled and supported on this platform. |
| UNITY_PRETRANSFORM_TO_DISPLAY_ORIENTATION | Unity enables UNITY_PRETRANSFORM_TO_DISPLAY_ORIENTATION when Vulkan pre-transform is enabled and supported on the target build platform. |
| UNITY_ASTC_NORMALMAP_ENCODING | Unity enables UNITY_ASTC_NORMALMAP_ENCODING when DXT5nm-style normal maps are used on Android, iOS or tvOS. |
| SHADER_API_GLES30 | SHADER_API_ES30 is set when the Graphics API is OpenGL ES 3 and the minimum supported OpenGL ES 3 version is OpenGL ES 3.0. |
| SHADER_API_GLES31 | SHADER_API_ES31 is set when the Graphics API is OpenGL ES 3 and the minimum supported OpenGL ES 3 version is OpenGL ES 3.1. |
| SHADER_API_GLES32 | SHADER_API_ES32 is set when the Graphics API is OpenGL ES 3 and the minimum supported OpenGL ES 3 version is OpenGL ES 3.2. |
| UNITY_UNIFIED_SHADER_PRECISION_MODEL | Unity sets UNITY_UNIFIED_SHADER_PRECISION_MODEL if, in Player Settings, you set Shader Precision Model to Unified. |
| UNITY_PLATFORM_SUPPORTS_WAVE_32 | Unity sets UNITY_PLATFORM_SUPPORTS_WAVE_32 when the target platform is known to support wave-level shader operations with a wave size of 32. |
| UNITY_PLATFORM_SUPPORTS_WAVE_64 | Unity sets UNITY_PLATFORM_SUPPORTS_WAVE_64 when the target platform is known to support wave-level shader operations with a wave size of 64. |
| UNITY_NEEDS_RENDERPASS_FBFETCH_FALLBACK | UNITY_NEEDS_RENDERPASS_FBFETCH_FALLBACK is set when we need to generate a fallback for RenderPass due to the possibility of not having framebuffer fetch |
| UNITY_PLATFORM_SUPPORTS_DEPTH_FETCH | UNITY_PLATFORM_SUPPORTS_DEPTH_FETCH is set if RenderPass can use its depth attachment as input. |
