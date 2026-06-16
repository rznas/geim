<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetComputeFloatParam.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| computeShader | ComputeShader to set parameter for. |
| name | Name of the variable in shader code. |
| nameID | Property name ID. Use Shader.PropertyToID to get this ID. |
| val | Value to set. |

### Description

Adds a command to set a float parameter on a ComputeShader.

Constant buffers are shared between all kernels in a single compute shader asset. Therefore this function affects all kernels in the passed ComputeShader.

Additional resources: DispatchCompute, SetComputeFloatParams, SetComputeIntParam, SetComputeIntParams, SetComputeMatrixParam, SetComputeMatrixArrayParam, SetComputeVectorParam, SetComputeVectorArrayParam, SetComputeTextureParam, SetComputeBufferParam.
