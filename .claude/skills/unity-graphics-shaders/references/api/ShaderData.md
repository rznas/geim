<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This class describes a shader.

### Properties

| Property | Description |
| --- | --- |
| ActiveSubshader | Returns the active subshader or null if none is currently active. |
| ActiveSubshaderIndex | Returns the index of the active subshader or -1 if none is currently active. |
| SerializedSubshaderCount | The number of serialized subshaders used by this shader. |
| SourceShader | The shader attached to this data set. |
| SubshaderCount | The number of runtime subshaders used by this shader. |

### Public Methods

| Method | Description |
| --- | --- |
| GetSerializedSubshader | Obtains the serialized subshader at the given index. |
| GetSubshader | Obtains the runtime subshader at the given index. |
