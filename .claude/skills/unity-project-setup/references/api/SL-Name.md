<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/SL-Name.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Name directive in ShaderLab reference

This page contains information on using a `Name` block in your **ShaderLab** code to assign a name to a Pass. For information on defining Passes, see ShaderLab: defining a Pass. For information on how a **Shader** object works, and the relationship between **Shader objects**, SubShaders and Passes, see Shader object fundamentals.

## Render pipeline compatibility

| **Feature name** | **Universal **Render Pipeline** (URP)** | **High Definition Render Pipeline (HDRP)** | **Custom SRP** | **Built-in Render Pipeline** |
| --- | --- | --- | --- | --- |
| **ShaderLab: Name block** | Yes | Yes | Yes | Yes |

## Syntax

| **Signature** | **Function** |
| --- | --- |
| `Name "<name>"` | Sets the name of the Pass. |

## Additional resources

- Add a shader pass in a custom shader
