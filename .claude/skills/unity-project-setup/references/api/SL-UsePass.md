<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/SL-UsePass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# UsePass directive in ShaderLab reference

For information on adding a name to a Pass in **ShaderLab** code, see ShaderLab: adding a name to a Pass.

## Render pipeline compatibility

| **Feature name** | **Universal **Render Pipeline** (URP)** | **High Definition Render Pipeline (HDRP)** | **Custom SRP** | **Built-in Render Pipeline** |
| --- | --- | --- | --- | --- |
| **UsePass** | Yes | Yes | Yes | Yes |

## Syntax

| **Signature** | **Function** |
| --- | --- |
| `UsePass "Shader object name/PASS NAME IN UPPERCASE"` | Inserts the named Pass from the named Shader object.  If the named Shader object contains more than one SubShader, Unity iterates over the SubShaders until it finds the first supported SubShader that contains a Pass with the given name. For information on how Unity determines whether a SubShader is supported, see Shader objects introduction.  If the SubShader contains more than one Pass with the same name, Unity returns the last Pass it finds.  If Unity does not find a matching Pass, it shows the error shader. |

## Additional resources

- Include a shader pass with the UsePass command
