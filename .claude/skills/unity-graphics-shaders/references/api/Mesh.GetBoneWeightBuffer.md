<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetBoneWeightBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| layout | Which buffer to access, based on maximum bones per vertex. |

### Returns

**GraphicsBuffer** The bone weight data as a GraphicsBuffer.

### Description

Retrieves a GraphicsBuffer that provides direct read and write access to GPU bone weight data.

The buffer that this function returns is called the bone weight buffer. It contains indices and weights to use for skinning.

To know which buffer the mesh is using, call skinWeightBufferLayout.

It is possible to access the buffer with a lower SkinWeigts setting, for instance a mesh with SkinWeights.Unlimited can be accessed with SkinWeights.FourBones and SkinWeights.TwoBones. However, a mesh with SkinWeights.FourBones can not be accessed using SkinWeights.Unlimited.

Mesh.isReadable does not need to be `true` to access this data.

After using this buffer, you should dispose of it.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public Mesh mesh;
    public ComputeShader computeShader;    void Start()
    {
        // Fetch GraphicsBuffer with Bone Weight data
        var boneWeightBuffer = mesh.GetBoneWeightBuffer(mesh.skinWeightBufferLayout);        // Set Bone Weight data to a compute shader
        computeShader.SetBuffer(0, "BoneWeightBuffer", boneWeightBuffer);        // Dispatch compute shader and access Bone Weight data on the GPU
        computeShader.Dispatch(0, 64, 1, 1);        // Dispose of GraphicsBuffer to avoid leaking memory
        boneWeightBuffer .Dispose();
    }}
```

Additional resources: Mesh.skinWeightsBufferLayout, Mesh.GetBlendShapeBuffer
