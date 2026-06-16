<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LocalKeyword-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shader | The Shader to use. |
| name | The name of the local shader keyword. |

### Description

Initializes and returns a LocalKeyword struct that represents an existing local shader keyword for a given Shader.

If the Shader declares a local shader keyword with the given name, Unity creates and returns a `LocalKeyword` struct that represents it. Otherwise, Unity still creates a struct, but throws an error.

Additional resources: Shader variants and keywords, IPreprocessShaders.OnProcessShader.

### Parameters

| Parameter | Description |
| --- | --- |
| shader | The ComputeShader to use. |
| name | The name of the local shader keyword. |

### Description

Initializes and returns a LocalKeyword struct that represents an existing local shader keyword for a given ComputeShader.

If the ComputeShader declares a local shader keyword with the given name, Unity creates and returns a `LocalKeyword` struct that represents it. Otherwise, Unity still creates a struct, but throws an error.

Additional resources: Shader variants and keywords, IPreprocessComputeShaders.OnProcessComputeShader.

### Parameters

| Parameter | Description |
| --- | --- |
| shader | The RayTracingShader to use. |
| name | The name of the local shader keyword. |

### Description

Initializes and returns a LocalKeyword struct that represents an existing local shader keyword for a given RayTracingShader.

If the RayTracingShader declares a local shader keyword with the given name, Unity creates and returns a `LocalKeyword` struct that represents it. Otherwise, Unity still creates a struct, but throws an error.

Additional resources: Shader variants and keywords.
