<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/SL-landing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Writing a custom shader in ShaderLab and HLSL

Resources and techniques for writing **Shader** objects, subshaders and shader passes in **ShaderLab** and HLSL.

| **Page** | **Description** |
| --- | --- |
| Create a shader file | Create a customshader asset file either using the Unity Editor or manually. |
| Add a subshader in a custom shader | Use a `SubShader` block to add one or more sections that define different GPU settings and shader programs for different hardware, **render pipelines**, and runtime settings. |
| Add a shader pass in a custom shader | Use a `Pass` block to write instructions for setting the state of the GPU, and the shader programs that run on the GPU. |
| Include a shader pass with the UsePass command | Insert a named Pass from another **Shader object**, to avoid reduce code duplication in shader source files. |
| Writing HLSL shader programs | Resources for writing HLSL shader programs inside a `Pass` block in a custom ShaderLab shader. |
| GLSL in Unity | If a platform supports OpenGL Core and OpenGL ES, you can write OpenGL Shading Language (GLSL) shader programs in Unity. |
| Setting the render state on the GPU | Resources for using commands in a subshader or shader pass that change the render state on the GPU. |

## Additional resources

- Shader languages reference
- Writing custom shaders in URP
- Writing custom shaders in the Built-In Render Pipeline
- HLSL shader examples in the Built-In Render Pipeline
