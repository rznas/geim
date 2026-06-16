<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeShader.SetTextureFromGlobal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| kernelIndex | For which kernel the texture is being set. See FindKernel. |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| name | Name of the buffer variable in shader code. |
| globalTextureName | Global texture property to assign to shader. |
| globalTextureNameID | Property name ID, use Shader.PropertyToID to get it. |

### Description

Set a texture parameter from a global texture property.

This function can either set a regular texture that is read in the compute shader, or an output texture that is written into by the shader. For an output texture, it has to be a RenderTexture with random write flag enabled, see RenderTexture.enableRandomWrite.

Buffers and textures are set per-kernel. Use FindKernel to find kernel index by function name.

Additional resources: FindKernel, SetBuffer, SetTexture, Shader.SetGlobalTexture.

```csharp
// Assign the CameraMotionVectorsTexture global texture to a compute texture
using System;
using UnityEngine;public class SampleBehaviour : MonoBehaviour
{
    public int renderTargetWidth;
    public int renderTargetHeight;
    ComputeShader myComputeShader;    void ComputeUsingMotionVector()
    {
        int kKernelIndex = 0;        myComputeShader.SetTextureFromGlobal(kKernelIndex, "computeTexture", "_CameraMotionVectorsTexture");
        myComputeShader.Dispatch(kKernelIndex, renderTargetWidth, renderTargetHeight, 1);
    }
}
```
