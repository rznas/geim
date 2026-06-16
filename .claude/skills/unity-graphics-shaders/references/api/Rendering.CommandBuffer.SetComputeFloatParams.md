<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetComputeFloatParams.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| computeShader | ComputeShader to set parameter for. |
| name | Name of the variable in shader code. |
| nameID | Property name ID. Use Shader.PropertyToID to get this ID. |
| values | Values to set. |

### Description

Adds a command to set multiple consecutive float parameters on a ComputeShader.

This function can be used to set float vector, float array or float vector array values. For example, `float4 myArray[4]` in the compute shader can be filled by passing 16 floats. See Compute Shaders for information on data layout rules.

Constant buffers are shared between all kernels in a single compute shader asset. Therefore this function affects all kernels in the passed ComputeShader.

Additional resources: DispatchCompute, SetComputeFloatParam, SetComputeIntParam, SetComputeIntParams, SetComputeMatrixParam, SetComputeMatrixArrayParam, SetComputeVectorParam, SetComputeVectorArrayParam, SetComputeTextureParam, SetComputeBufferParam.
