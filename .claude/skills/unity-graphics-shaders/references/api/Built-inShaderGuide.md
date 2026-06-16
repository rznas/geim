<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/Built-inShaderGuide.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Legacy prebuilt shaders

Prior to the introduction of the Physically Based Standard Shader, Unity was supplied with more than eighty built-in shaders which each served different purposes. These shaders are still included and available for use in Unity for backwards compatibility but we recommend you use the Standard **Shader** wherever possible for new projects.

This section begins by explaining how to use the legacy built-in shaders to maximum effect. The remainder of the section details all the available shaders, grouped into related “families”.

| **Topic** | **Description** |
| --- | --- |
| **Usage and Performance of Built-in Shaders** | Learn how Materials, **rendering paths**, and vertex- versus pixel-lit models affect legacy shader performance. |
| **Normal Shader Family reference** | Reference for legacy opaque Normal-family shaders. |
| **Transparent Shader Family** | Reference for legacy shaders that blend full or partial transparency from the base texture alpha. |
| **Transparent Cutout Shader Family** | Reference for legacy cutout shaders with hard opaque and transparent regions. |
| **Self-Illuminated Shader Family** | Reference for legacy shaders that self-illuminate from texture without requiring **scene** lights. |
| **Reflective Shader Family** | Reference for legacy shaders that reflect an assigned **cubemap** with per-texel reflectivity. |

## Additional resources

- Prebuilt shaders in URP
- Standard Shader in the Built-In Render Pipeline
