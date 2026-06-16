<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderData.Pass.PreprocessVariant.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shaderType | The shader type within this pass to preprocess. (e.g. Vertex, Fragment, etc.) Some platforms (OpenGLCore, GLES3x, Switch and Vulkan) include all stages within the Vertex shader type. |
| keywords | The keywords to use during the preprocessing. |
| shaderCompilerPlatform | The shader compiler platform to preprocess for. |
| buildTarget | The build target to preprocess for. |
| tier | An optional graphics tier. |
| platformKeywords | An optional set of platform keywords. If you do not provide any, Unity uses the default keywords for the given platform, target, and tier. |
| stripLineDirectives | Whether to skip line number directives in the preprocessed output. When enabled, Unity produces more human-readable preprocessed source code and skips the line directives when the file name doesn't change. Otherwise, this method produces the exact preprocessed source that Unity passes to the compiler. |

### Returns

**PreprocessedVariant** The preprocessed variant result. If the pass doesn't include the requested program, or if the pass is not the correct type, this function still succeeds but returns empty preprocessed code.

### Description

Preprocesses a shader variant for this shader pass and returns the preprocessed code.
