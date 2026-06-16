<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.PlatformKeywordSet.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A collection of ShaderKeyword that represents a specific platform variant.

A `PlatformKeywordKeywordSet` represents a part of one shader variant, a unique combination of keywords you can use to enable or disable functionality within a shader.

`PlatformKeywordSet` mirrors ShaderKeywordSet's functionality, but does not contain user-defined keywords. Instead, this struct provides information on the rendering capabilities and rendering API of the target platform. For example, framebuffer fetch (represented via the keyword BuiltinShaderDefine.UNITY_FRAMEBUFFER_FETCH_AVAILABLE) may be available when compiling a shader for BuildTarget.Android, but not for BuildTarget.StandaloneWindows.

For more information on shader variants and keywords, refer to Shader variants and keywords and Changing how shaders work via branching and keywords.

Additional resources: ShaderKeyword, Shader.EnableKeyword, Shader.EnableKeyword.

### Public Methods

| Method | Description |
| --- | --- |
| Disable | Disable a specific shader keyword. |
| Enable | Enable a specific shader keyword. |
| IsEnabled | Check whether a specific shader keyword is enabled. |
