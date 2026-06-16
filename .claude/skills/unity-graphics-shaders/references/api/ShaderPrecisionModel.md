<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderPrecisionModel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for the shader precision model.

This enumeration allows you to change two things: the default sampler precision and the definition of `half`.

 The default sampler precision is only relevant to samplers that don't explicitly declare a precision. For example, `sampler2D` uses the default precision, but `sampler2D_float` uses full precision regardless of the default precision.

 Regarding the shader type `half`, it is defined as either `float` or `min16float` (see SL-DataTypesAndPrecision). For the purpose of uploading data to buffers, including constant buffers, the size and alignment is 4 bytes in both cases.

### Properties

| Property | Description |
| --- | --- |
| PlatformDefault | Use the target platform defaults. The default sampler precision is half precision on mobile targets and full precision elsewhere. Also, shader type half is defined as min16float on mobile targets and float elsewhere. |
| Unified | Use full sampler precision by default, and explicitly declare when you want to use lower precision. Refer to SL-DataTypesAndPrecision for more information. In addition, half is defined as min16float on all platforms. This sets BuiltinShaderDefine.UNITY_UNIFIED_SHADER_PRECISION_MODEL when Unity compiles shaders. |
