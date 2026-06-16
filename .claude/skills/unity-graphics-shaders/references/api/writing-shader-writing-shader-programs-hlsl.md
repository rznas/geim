<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/writing-shader-writing-shader-programs-hlsl.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Writing HLSL shader programs

Write High-Level **Shader** Language (HLSL) vertex and fragment shader programs inside a `Pass` block in a custom **ShaderLab** shader.

| **Page** | **Description** |
| --- | --- |
| Introduction to HLSL shader programs | Learn about writing shader programs in HLSL in Unity, and vertex and fragment shaders. |
| Add an HLSL shader program | Use the `HLSLPROGRAM` directive to add a shader program to a shader pass. |
| Reuse HLSL code | Include or duplicate HLSL in different places, or share `#pragma` directives across different shaders. |
| Input data into HLSL | Create a `struct` that declares shader variables and connects them to the vertex data of the **mesh**. |
| Sample a texture in HLSL | Declare and sample a texture in HLSL using a sampler. |
| Writing HLSL for different graphics APIs | Write HLSL to take into account how graphics rendering differs between different graphics APIs. |
| Use 16-bit precision in shaders | Use 16-bit precision in GPU calculations, so shaders use less memory, bandwidth, and power, and calculations are faster. |
| Pass information to the shader compiler | Use the `#define`, `#pragma`, and `#define_for_platform_compiler` directives to pass information to the shader compiler. |

## Additional resources

- Shader languages reference
- HLSL pragma directives reference
- HLSL shader examples in the Built-In Render Pipeline
- Writing custom shaders in the Universal Render Pipeline (URP)
