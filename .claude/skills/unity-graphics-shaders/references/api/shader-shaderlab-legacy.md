<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/shader-shaderlab-legacy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# ShaderLab legacy functionality reference

ShaderLab includes a number of “fixed-function style” commands that allow you to write **shaders** without using any HLSL code.

**Note**: These commands are legacy, and are documented for backwards compatibility only. If your **Shader object** source file includes HLSL code, Unity ignores these commands completely. If your shader source file does not include HLSL code, Unity compiles these commands into regular shader programs on import.

| **Topic** | **Description** |
| --- | --- |
| **ShaderLab: legacy fog** | Reference for enabling or disabling Unity’s built-in fog. |
| **ShaderLab: legacy lighting** | Reference for controlling the built-in vertex lighting parameters. |
| **ShaderLab: legacy alpha testing** | Reference for comparing the alpha value of a color to a fixed value before rendering a **pixel**. |
| **ShaderLab: legacy texture combining** | Reference for applying textures after calculating the basic vertex lighting. |
| **ShaderLab: legacy vertex data channel mapping** | Reference for specifying how vertex data maps to the graphics hardware. |

## Additional resources

- Writing a custom shader in ShaderLab and HLSL
- ShaderLab language reference
