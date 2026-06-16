<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeShader.SetBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| kernelIndex | For which kernel the buffer is being set. See FindKernel. |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| name | Name of the buffer variable in shader code. |
| buffer | Buffer to set. |

### Description

Sets an input or output compute buffer.

Buffers and textures are set per-kernel. Use FindKernel to find kernel index by function name.

Setting a compute buffer to a kernel will leave the append/consume counter value unchanged. To set or reset the value, use ComputeBuffer.SetCounterValue or GraphicsBuffer.SetCounterValue.

Additional resources: SetFloat, SetFloats, SetInt, SetInts, SetBool, SetMatrix, SetMatrixArray, SetTexture, SetVector, SetVectorArray.
