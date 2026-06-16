<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeShader.FindKernel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name of kernel function as defined in the compute shader source file. |

### Returns

**int** The Kernel index. If the kernel is not found, Unity logs a "FindKernel failed" error message and raises an ArgumentException.

### Description

Find ComputeShader kernel index.

A single compute shader can contain many "kernels" (functions that do the computation); FindKernel returns kernel index given the name.

Additional resources: Dispatch.

```csharp
using UnityEngine;public class ComputeShaderExample : MonoBehaviour
{
    public ComputeShader computeShader;    void Start()
    {
        // Find the kernel named "CSMain" in the compute shader
        int kernelHandle = computeShader.FindKernel("CSMain");        // Log the kernel index
        Debug.Log($"Kernel 'CSMain' found at index: {kernelHandle}");
    }
}
```
