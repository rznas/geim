<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShaderKeyword.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an identifier for a specific code path in a shader.

Unity now provides the LocalKeyword and GlobalKeyword APIs which are more performant than ShaderKeyword. It is best practice to use these APIs instead.

Additional resources: LocalKeyword, GlobalKeyword, ShaderKeywordSet, Shader.EnableKeyword, Shader variants and keywords, Declaring and using shader keywords in HLSL.

### Properties

| Property | Description |
| --- | --- |
| index | The index of the shader keyword. |
| name | The name of the shader keyword. (Read Only) |

### Constructors

| Constructor | Description |
| --- | --- |
| ShaderKeyword | Initializes a new instance of the ShaderKeyword class from a shader global keyword name. |

### Public Methods

| Method | Description |
| --- | --- |
| IsValid | Checks whether the global shader keyword exists. |

### Static Methods

| Method | Description |
| --- | --- |
| GetGlobalKeywordType | Returns the type of global keyword: built-in or user defined. |
| IsKeywordLocal | Returns true if the keyword is local. |
