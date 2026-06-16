<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShaderKeyword-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keywordName | The name of the keyword. |

### Description

Initializes a new instance of the ShaderKeyword class from a shader global keyword name.

If you call this function and a keyword with the name you pass in does not exist, Unity creates one with that name. To get all the global keywords that already exist, use Shader.globalKeywords.

Additional resources: IPreprocessShaders.OnProcessShader, IPreprocessComputeShaders.OnProcessComputeShader.

### Parameters

| Parameter | Description |
| --- | --- |
| shader | The shader that declares the keyword. |
| keywordName | The name of the keyword. |

### Description

Initializes a new instance of the ShaderKeyword class from a local shader keyword name.

If the shader defines a local keyword with the given name, Unity creates a valid ShaderKeyword instance that represents the local keyword. Otherwise, Unity creates an invalid ShaderKeyword instance.

Additional resources: Build.IPreprocessComputeShaders.OnProcessShader, ShaderKeyword.IsValid.

### Parameters

| Parameter | Description |
| --- | --- |
| shader | The compute shader that declares the local keyword. |
| keywordName | The name of the keyword. |

### Description

Initializes a new instance of the ShaderKeyword class from a local shader keyword name, and the compute shader that defines that local keyword.

If the compute shader defines a local keyword with the given name, Unity creates a valid ShaderKeyword instance that represents the local keyword. Otherwise, Unity creates an invalid ShaderKeyword instance.

Additional resources: IPreprocessComputeShaders.OnProcessComputeShader, ShaderKeyword.IsValid.
