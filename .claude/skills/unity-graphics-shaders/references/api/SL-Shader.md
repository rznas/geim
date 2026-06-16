<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/SL-Shader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Shader block in ShaderLab reference

A **Shader** object is a Unity-specific concept; it is a wrapper for shader programs and other information. It lets you define multiple shader programs in the same file, and tell Unity how to use them.

A **Shader object** has a nested structure; it organizes information into structures called SubShaders and Passes.

Inside the `Shader` block, you can:

- Define material properties, using the `Properties` block. See ShaderLab: defining material properties.
- Define one or more SubShaders, using the `SubShader` block. See ShaderLab: defining a SubShader.
- Assign a custom editor, which determines how the shader asset appears in the Unity Editor. Optionally, you can assign different custom editors for different **render pipelines**. See ShaderLab: assigning custom editors.
- Assign a fallback Shader object, using the `Fallback` block. See ShaderLab: assigning a fallback.

## Render pipeline compatibility

| **Feature name** | **Universal Render Pipeline (URP)** | **High Definition Render Pipeline (HDRP)** | **Custom SRP** | **Built-in Render Pipeline** |
| --- | --- | --- | --- | --- |
| ****ShaderLab**: Shader block** | Yes | Yes | Yes | Yes |

## Syntax

| **Signature** | **Function** |
| --- | --- |
| `Shader "<name>"` `{`  `<optional: Material properties>`  `<One or more SubShader definitions>`  `<optional: custom editor>`  `<optional: fallback>` `}` | Defines a Shader object with a given name. |

## Additional resources

- Define a Shader object in ShaderLab
