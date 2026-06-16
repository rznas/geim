<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderData.Pass.CompileVariant.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shaderType | The shader type within this pass to compile. (e.g. Vertex, Fragment, etc.) Some platforms (OpenGLCore, GLES3x, Switch and Vulkan) include all stages within the Vertex shader type. |
| keywords | The keywords to use during the compilation. |
| shaderCompilerPlatform | The shader compiler platform to compile for. |
| buildTarget | The build target to compile for. |
| forExternalTool | Indicates whether to prepare the bytecode for Unity or to use with external tools. |
| tier | An optional graphics tier. |
| platformKeywords | An optional set of platform keywords. If you do not provide any, Unity uses the default keywords for the given platform, target, and tier. |

### Returns

**VariantCompileInfo** The compiled variant result, including resource layout information and bytecode. If the pass doesn't include the requested program, or if the pass is not the correct type, this function still succeeds but returns empty bytecode.

### Description

Compiles a shader variant for this shader pass and returns its bytecode and resource layout.
