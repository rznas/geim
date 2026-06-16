<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderUtil.GetShaderPlatformKeywordsForBuildTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shaderCompilerPlatform | The shader compiler platform. |
| buildTarget | The build target. |
| tier | An optional graphics tier. |

### Returns

**BuiltinShaderDefine[]** Returns an array of built-in shader defines needed to compile a shader for the given target.

### Description

Gets the platform keywords for a shader, given a shader compiler platform, build target, and optional graphics tier. These platform keywords are necessary to properly compile a shader for a given target.
