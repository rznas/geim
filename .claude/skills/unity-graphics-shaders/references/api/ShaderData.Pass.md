<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderData.Pass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This class describes a pass of a subshader.

### Properties

| Property | Description |
| --- | --- |
| IsGrabPass | Indicates whether this Pass results from a GrabPass command. |
| Name | The name of this pass (may be empty). |
| SourceCode | The source code for this pass. |

### Public Methods

| Method | Description |
| --- | --- |
| CompileVariant | Compiles a shader variant for this shader pass and returns its bytecode and resource layout. |
| FindTagValue | Searches for the tag specified by tagName on this SubShader and returns the value of the tag. |
| HasShaderStage | Checks whether this pass includes a shader stage. |
| PreprocessVariant | Preprocesses a shader variant for this shader pass and returns the preprocessed code. |
