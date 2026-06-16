<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeShader.DispatchIndirect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| kernelIndex | Which kernel to execute. A single compute shader asset can have multiple kernel entry points. |
| argsBuffer | Buffer with dispatch arguments. |
| argsOffset | The byte offset into the buffer, where the draw arguments start. |

### Description

Execute a compute shader.

This function "runs" the compute shader, with the given work size read directly from the GPU. Typical use case is generating arbitrary amount of data from a ComputeShader and then dispatching that, without requiring a readback to the CPU.

Buffer with arguments, `argsBuffer`, has to have three integer numbers at given `argsOffset` offset: number of work groups in X dimension, number of work groups in Y dimension, number of work groups in Z dimension.

Within each work group, a number of shader invocations ("threads") are done. The work group size is specified in the compute shader itself (using "numthreads" HLSL attribute), and the total amount of compute shader invocations is thus group count multiplied by the thread group size. Work group size can be queried using GetKernelThreadGroupSizes function.

This very much maps to Direct3D11 DispatchIndirect, OpenGL glDispatchComputeIndirect and equivalent functions on other graphics APIs.

Additional resources: Dispatch, Graphics.DrawProceduralIndirect, ComputeBuffer.CopyCount, Compute Shaders.
