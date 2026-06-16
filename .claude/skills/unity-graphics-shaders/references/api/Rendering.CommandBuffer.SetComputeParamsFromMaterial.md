<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetComputeParamsFromMaterial.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| computeShader | The ComputeShader to set parameters for. |
| kernelIndex | The index of the kernel to set the material parameters. See ComputeShader.FindKernel. |
| material | The material to set the compute parameters. |

### Description

Sets the parameters for a compute shader kernel from a Material.

Use this function to copy over the properties of a material into a compute shader kernel.
