<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeShader.SetInts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Array variable name in the shader code. |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| values | Value array to set. |

### Description

Set multiple consecutive integer parameters at once.

This function can be used to set int vector, int array or int vector array values. For example, int4 myArray[4] in the compute shader can be filled by passing 16 integers. See Compute Shaders for information on data layout rules and cross-platform compatibility.

This API feeds raw data to the constant buffer, so the provided data must follow the HLSL constant buffer data layout rules. This means that the the array elements must be aligned on float4; for example, float4 data requires no padding, float3 data needs one float padding for each element, float2 data needs two floats, and so on.

Constant buffers are shared between all kernels in a single compute shader asset. Therefore this function affects all kernels in this ComputeShader.

Additional resources: SetFloat, SetFloats, SetInt, SetBool, SetBuffer, SetMatrix, SetMatrixArray, SetTexture, SetVector, SetVectorArray.
