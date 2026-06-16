<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.DispatchCompute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| computeShader | ComputeShader to execute. |
| kernelIndex | Kernel index to execute, see ComputeShader.FindKernel. |
| threadGroupsX | Number of work groups in the X dimension. |
| threadGroupsY | Number of work groups in the Y dimension. |
| threadGroupsZ | Number of work groups in the Z dimension. |
| indirectBuffer | ComputeBuffer with dispatch arguments. |
| argsOffset | Byte offset indicating the location of the dispatch arguments in the buffer. |

### Description

Add a command to execute a ComputeShader.

When the command buffer executes, a compute shader kernel is dispatched, with work group size either specified directly (see ComputeShader.Dispatch) or read from the GPU buffer (see ComputeShader.DispatchIndirect).
