<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-ComputeShaderImporter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Compute shader Import Settings window reference

View the properties and compiled code of a compute shader.

## Imported object

| **Property** | **Description** |
| --- | --- |
| **Kernels** | Displays the names of the kernels the **shader** code defines, and which graphics APIs Unity compiles the kernels for. |
| **Preprocess only** | Sets **Show compiled code** to generate only the preprocessed code instead of the final code. For more information, refer to Shader compilation. |
| **Strip #line directives** | Removes `#line` statements that display how the preprocessed code maps to the original HLSL code. This property is available only if you enable **Preprocess only**. |
| **Show compiled code** | Opens your text editor with the shader code Unity compiles. |

## Additional resources

- Create a compute shader
- Shader Import Settings window reference
