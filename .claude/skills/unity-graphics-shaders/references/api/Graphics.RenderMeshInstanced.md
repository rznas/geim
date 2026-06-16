<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.RenderMeshInstanced.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rparams | The parameters Unity uses to render the mesh instances. |
| mesh | The Mesh to render. |
| submeshIndex | The index of a submesh Unity renders when the Mesh contains multiple Materials (submeshes). For a Mesh with a single Material, use value 0. |
| instanceData | The array of instance data used to render the instances. |
| instanceCount | The number of instances to render. When this argument is -1 (default), Unity renders all the instances from the `startInstance` to the end of the `instanceData` array. |
| startInstance | The first instance in the `instanceData` to render. |

### Description

Renders multiple instances of a mesh using GPU instancing.

This function renders Meshes for the current frame, similar to Graphics.RenderMesh, but is more performant due to the use of GPU instancing.

Use this function to render the same Mesh multiple times using an instanced shader. Unity automatically calculates bounds for all the instances of this Mesh unless you override the bounds using `RenderParams.worldBounds`. Unity uses the bounds to cull and sort all the instances of this Mesh as a single entity, relative to other rendered Meshes in the scene.

The passed `instanceData` can either be an array of `Matrix4x4` (object-to-world transformation per instance) or a custom data structure. When the `instanceData` is a custom data structure, the structure can contain the following members:

```csharp
Matrix4x4 objectToWorld; // mandatory: Specifies object-to-world transformation matrix.
uint renderingLayerMask; // optional: Specifies rendering layer mask per instance. If not defined, uses the renderLayerMask passed in RenderParams.
Matrix4x4 prevObjectToWorld; // optional: Specifies previous frame object-to-world transformation matrix (used for motion vector rendering).
```

These members can appear in any order in the struct but they must have the above name and type when used. The instanced rendering ignores any other members you include in the struct for your own use. The following example of a custom struct defines the mandatory `objectToWorld` member, an optional `renderingLayerMask` member, and custom `weight` member (ignored by the `RenderMeshIndirect` function).

```csharp
public struct MyInstanceData
{
    Matrix4x4 objectToWorld; // We must specify object-to-world transformation for each instance
    uint renderingLayerMask; // In addition we also like to specify rendering layer mask per instence.
    float weight; // Just some additional per-instance data unrelated to rendering
};
```

To use light probes, set RenderParams.lightProbeUsage to LightProbeUsage.BlendProbes to automatically set up light probes for each instance. Or, use LightProbeUsage.CustomProvided to provide custom light probe data manually.

Alternatively, if your project uses the Built-In Render Pipeline, you can pass an LPPV component reference and LightProbeUsage.UseProxyVolume. When you do this, all instances sample the volume for the L0 and L1 bands of the Light Probe data. If you want to supplement L2 data and occlusion data, use a MaterialPropertyBlock.

You can only render a maximum of 1023 instances at once. The maximum depends on how much data you use for each instance.

By default, Unity uses an `objectToWorld` matrix and a `worldToObject` matrix for each instance, which means you can render a maximum of 511 instances at once. To remove the `worldToObject` matrix from the instance data, add `#pragma instancing_options assumeuniformscaling` to the shader.

Unity throws InvalidOperationException if the Material doesn't have Material.enableInstancing set to true, if the current platform doesn't support this API, or if GPU instancing is not available. For more information, see SystemInfo.supportsInstancing.

Additional resources: RenderMesh.

The following example renders 10 Meshes using `RenderMeshInstanced`. In this script, you need to enable "GPU Instancing" on the Material:

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public Material material;
    public Mesh mesh;
    const int numInstances = 10;    void Update()
    {
        RenderParams rp = new RenderParams(material);
        Matrix4x4[] instData = new Matrix4x4[numInstances];
        for(int i=0; i<numInstances; ++i)
            instData[i] = Matrix4x4.Translate(new Vector3(-4.5f+i, 0.0f, 5.0f));
        Graphics.RenderMeshInstanced(rp, mesh, 0, instData);
    }
}
```

The following example uses a custom instance data struct that provides an object-to-world transformation and a rendering layer mask for rendering each instance. For demonstration purposes the struct defines also a custom data member `myOtherData` that's unused for rendering but can be useful for other purposes:

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public Material material;
    public Mesh mesh;
    const int numInstances = 10;    struct MyInstanceData
    {
        public Matrix4x4 objectToWorld;
        public float myOtherData;
        public uint renderingLayerMask;
    };    void Update()
    {
        RenderParams rp = new RenderParams(material);
        MyInstanceData[] instData = new MyInstanceData[numInstances];
        for(int i=0; i<numInstances; ++i)
        {
            instData[i].objectToWorld = Matrix4x4.Translate(new Vector3(-4.5f+i, 0.0f, 5.0f));
            instData[i].renderingLayerMask = (i & 1) == 0 ? 1u : 2u;
        }
        Graphics.RenderMeshInstanced(rp, mesh, 0, instData);
    }
}
```
