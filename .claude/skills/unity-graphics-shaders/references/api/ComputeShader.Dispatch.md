<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeShader.Dispatch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| kernelIndex | Which kernel to execute. A single compute shader asset can have multiple kernel entry points. |
| threadGroupsX | Number of work groups in the X dimension. |
| threadGroupsY | Number of work groups in the Y dimension. |
| threadGroupsZ | Number of work groups in the Z dimension. |

### Description

Execute a compute shader.

This functions "runs" the compute shader, launching the indicated number of compute shader thread groups in the X, Y and Z dimensions. Within each work group, a number of shader invocations ("threads") are made. The work group size is specified in the compute shader itself (using "numthreads" HLSL attribute), and the total amount of compute shader invocations is thus group count multiplied by the thread group size. Work group size can be queried using GetKernelThreadGroupSizes function.

Additional resources: FindKernel, GetKernelThreadGroupSizes, DispatchIndirect, Compute Shaders.
