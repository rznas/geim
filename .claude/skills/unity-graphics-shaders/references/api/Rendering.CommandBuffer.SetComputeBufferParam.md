<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetComputeBufferParam.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| computeShader | ComputeShader to set parameter for. |
| kernelIndex | Which kernel the buffer is being set for. See ComputeShader.FindKernel. |
| name | Name of the buffer variable in shader code. |
| nameID | Property name ID. Use Shader.PropertyToID to get this ID. |
| buffer | Buffer to set. |
| bufferHandle | The handle of the buffer to set. |

### Description

Adds a command to set an input or output buffer parameter on a ComputeShader.

Buffers and textures are set per-kernel. Use ComputeShader.FindKernel to find kernel index by function name.

Setting a compute buffer to a kernel will leave the append/consume counter value unchanged. To set or reset the value, use ComputeBuffer.SetCounterValue or GraphicsBuffer.SetCounterValue.

Additional resources: DispatchCompute, SetComputeFloatParam, SetComputeFloatParams, SetComputeIntParam, SetComputeIntParams, SetComputeMatrixParam, SetComputeMatrixArrayParam, SetComputeVectorParam, SetComputeVectorArrayParam, SetComputeTextureParam.
