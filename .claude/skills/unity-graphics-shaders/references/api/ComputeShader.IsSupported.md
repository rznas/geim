<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeShader.IsSupported.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| kernelIndex | Which kernel to query. |

### Returns

**bool** True if the specified compute kernel is able to run on the current end user device, false otherwise.

### Description

Allows you to check whether the current end user device supports the features required to run the specified compute shader kernel.

The result of this call depends on which hardware requirements the compute shader in question is expected to rely on (as defined by the `#pragma require <requirement_a> <requirement_b> <requirement_c> ...` shader syntax). This method implicitly refers to the compute shader variant defined by the set of currently enabled shader keywords (the variant that would be run if ComputeShader.Dispatch were called instead). This means that when the source code of the shader in question contains per-keyword requirements defined using the '#pragma require KEYWORD_A KEYWORD_B ... : <requirement_a> <requirement_b> <requirement_c>...' syntax the result of IsSupported might depend on which shader keywords are enabled.

Additional resources: Shader variants and keywords, Declaring and using shader keywords in HLSL, Targeting shader models and GPU features in HLSL.
