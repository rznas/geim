<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.AddInstances.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| config | The common parameters this array of ray tracing Mesh instance uses. |
| instanceData | An array of instance data used by the ray tracing Mesh instances. |
| instanceCount | The number of instances to add to the acceleration structure. When this argument is -1 (default), Unity adds all the instances from the startInstance to the end of the instanceData array. |
| startInstance | The first instance in the instanceData to add to the acceleration structure. |
| id | An optional instance ID value that you can access in HLSL with the `InstanceID()` function. Unity assigns consecutive instance IDs to each mesh instance, starting with the value of `id`. |

### Returns

**int** A value which represents a handle you can use to perform later actions (e.g. RemoveInstance, UpdateInstancePropertyBlock), or 0 if the instances are not added successfully.

### Description

Adds an array of ray tracing Mesh instances to the RayTracingAccelerationStructure.

The passed instanceData can either be an array of Matrix4x4 (object-to-world transformation per instance) or a custom data structure. When the instanceData is a custom data structure, the structure can contain the following members:

- **Matrix4x4 objectToWorld** (mandatory) - specifies per-instance object-to-world transformation matrix
- **uint renderingLayerMask** (optional) - specifies per-instance rendering layer mask
- **Matrix4x4 prevObjectToWorld** (optional) - specifies per-instance previous frame object-to-world transformation matrix (used for motion vector calculation)

These members can appear in any order in the structure, but they must have the above name and type. AddInstances ignores any other members you include in the structure for your own use. The following example of a custom structure defines the mandatory objectToWorld member, an optional renderingLayerMask member, and a custom weight member (the AddInstances function ignores this member).

```csharp
struct MyInstanceData
{
    public Matrix4x4 objectToWorld; // We must specify object-to-world transformation for each instance
    public uint renderingLayerMask; // Optional per-instance rendering layer mask.
    public float weight; // Additional per-instance data unrelated to rendering.
};
```

For optimal CPU performance, MyInstanceData should contain objectToWorld member only, otherwise Unity must deinterleave the data.

When AddInstances is in use, Unity enables `INSTANCING_ON` shader keyword. To declare the shader keyword in HLSL, add `#pragma multi_compile _ INSTANCING_ON` in the Shader Pass specified in RayTracingShader.SetShaderPass or CommandBuffer.SetRayTracingShaderPass. To access per-instance data relative to this array of ray tracing instances, use `InstanceIndex() - unity_BaseInstanceID` as an instance index in HLSL. For example, if prevObjectToWorld member is present in MyInstanceData structure, Unity copies the values into `unity_PrevObjectToWorldArray` buffer which you can define in HLSL as `StructuredBuffer<float4x4> unity_PrevObjectToWorldArray;` You can then index the buffer using `InstanceIndex() - unity_BaseInstanceID` difference. The following HLSL code snippet demonstrates how to compute a world-space velocity vector which is output in the ray payload:

```csharp
#pragma multi_compile _ INSTANCING_ONstruct AttributeData
{
    float2 barycentrics;
};struct RayPayload
{
    float3 velocity;
};// Built-in shader variables:
StructuredBuffer<float4x4> unity_PrevObjectToWorldArray;
float4x4 unity_MatrixPreviousM;
uint unity_BaseInstanceID;static uint unity_InstanceID;[shader("closesthit")]
void ClosestHitMain(inout RayPayload payload, AttributeData attribs)
{
   float3 localPos = ObjectRayOrigin() + RayTCurrent() * ObjectRayDirection();#if INSTANCING_ON
    unity_InstanceID = InstanceIndex() - unity_BaseInstanceID;
 
    float3 prevWorldPos = mul(unity_PrevObjectToWorldArray[unity_InstanceID], float4(localPos, 1)).xyz;
#else
    float3 prevWorldPos = mul(unity_MatrixPreviousM, float4(localPos, 1)).xyz;
#endif
    float3 worldPos = WorldRayOrigin() + RayTCurrent() * WorldRayDirection();    payload.velocity = worldPos - prevWorldPos;
}
```

Depending on the parameters in config argument and the instanceData custom structure, AddInstances will set up and bind the following built-in StructuredBuffers to hit shaders:

- `unity_PrevObjectToWorldArray` (float4x4) - when prevObjectToWorld member is present in instanceData custom structure.
- `unity_RenderingLayerArray` (float) - when renderingLayerMask member is present in instanceData custom structure.
- `unity_SHArArray`, `unity_SHAgArray`, `unity_SHAbArray`, `unity_SHBrArray`, `unity_SHBgArray`, `unity_SHBbArray`, `unity_SHCArray` (float4) - spherical harmonics coefficients (used by ambient and light probes) when config.lightProbeUsage is LightProbeUsage.Off (ambient probe only), LightProbeUsage.BlendProbes or LightProbeUsage.UseProxyVolume (when config.lightProbeProxyVolume.qualityMode is set to LightProbeProxyVolume.QualityMode.Normal).

Note that AddInstances doesn't set up and bind `unity_ObjectToWorldArray` or `unity_WorldToObjectArray` buffers since you can access the ray tracing instance transformation matrices in hit shaders using `ObjectToWorld()` or `WorldToObject()` HLSL intrinsics.

You can use this function to add a maximum of 1048575 ray tracing Mesh instances. The final instance count depends on both startInstance and instanceCount arguments. You can access the instance count in HLSL using `unity_InstanceCount` built-in uniform.

AddInstances throws InvalidOperationException if the Material specified in the config argument doesn't have Material.enableInstancing set to true. When you have added all required instances, use RayTracingAccelerationStructure.Build or CommandBuffer.BuildRayTracingAccelerationStructure to build the acceleration structure on the GPU.

This functionality doesn't have any special hardware requirements in addition to ray tracing support (SystemInfo.supportsRayTracing must be true). In DirectX Raytracing (DXR), this function causes all ray tracing instances in the array to use only one shader record from the shader table, thus reducing the CPU overhead on the render thread for binding GPU resources to hit shaders.

Additional resources: RayTracingAccelerationStructure.AddInstance, RayTracingAccelerationStructure.RemoveInstance.
