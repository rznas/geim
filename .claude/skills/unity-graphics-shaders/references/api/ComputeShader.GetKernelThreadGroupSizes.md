<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeShader.GetKernelThreadGroupSizes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| kernelIndex | Which kernel to query. A single compute shader asset can have multiple kernel entry points. |
| x | Thread group size in the X dimension. |
| y | Thread group size in the Y dimension. |
| z | Thread group size in the Z dimension. |

### Description

Get kernel thread group sizes.

Work group size for each compute shader kernel is specified in the shader code itself (using "numthreads" HLSL attribute). Use this function to query it.

Additional resources: Dispatch, FindKernel, Compute Shaders.
