<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.PassIdentifier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an identifier of a specific Pass in a Shader.

Additional resources: Shader, ShaderUtil, Pass.

### Properties

| Property | Description |
| --- | --- |
| PassIndex | The index of the pass within the subshader (Read Only). |
| SubshaderIndex | The index of the subshader within the shader (Read Only). |

### Constructors

| Constructor | Description |
| --- | --- |
| PassIdentifier | Constructs a new PassIdentifier with the given subshaderIndex and passIndex. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | Returns true if the pass identifiers are not the same. Otherwise, returns false. |
| operator == | Returns true if the pass identifiers are the same. Otherwise, returns false. |
