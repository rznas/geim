<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.CullInstances.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cullingConfig | Parameters for culling and filtering ray tracing instances. |

### Returns

**RayTracingInstanceCullingResults** Culling results.

### Description

Populates the RayTracingAccelerationStructure with ray tracing instances that Unity associates with Renderers in the Scene by using filtering and culling parameters.

The previous content of the acceleration structure can optionally be cleared by using RayTracingAccelerationStructure.ClearInstances. After calling this function, additional ray tracing instances can be added to the acceleration structure using RayTracingAccelerationStructure.AddInstance functions.

If RayTracingInstanceCullingConfig.instanceTests array is empty then this function doesn't have any effect.

To build an acceleration structure on the GPU, call RayTracingAccelerationStructure.Build or CommandBuffer.BuildRayTracingAccelerationStructure.

Additional resources: RayTracingShader.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;// This script can be attached to a Camera.
public class CullInstancesExample : MonoBehaviour
{
    // A RayTracingShader is defined in a .raytrace file.
    public RayTracingShader rayTracingShader = null;    public bool enableRayTracedReflections = true;
    public bool enableRayTracedShadows = true;    private int cameraWidth = 0;
    private int cameraHeight = 0;    private RenderTexture rayTracingOutput = null;
    private RayTracingAccelerationStructure rayTracingAccelStruct = null;    void Start()
    {
        if (SystemInfo.supportsRayTracingShaders == false)
        {
            Debug.Log("The system doesn't support Ray Tracing.");
            return;
        }        RayTracingAccelerationStructure.Settings accelStructSetting = new RayTracingAccelerationStructure.Settings(RayTracingAccelerationStructure.ManagementMode.Manual, RayTracingAccelerationStructure.RayTracingModeMask.Everything, -1);
        rayTracingAccelStruct = new RayTracingAccelerationStructure(accelStructSetting);
    }    void OnDisable()
    {
        if (rayTracingAccelStruct != null)
        {
            rayTracingAccelStruct.Release();
            rayTracingAccelStruct = null;
        }        if (rayTracingOutput)
        {
            rayTracingOutput.Release();
            rayTracingOutput = null;
        }        cameraWidth = 0;
        cameraHeight = 0;
    }    void OnRenderImage(RenderTexture src, RenderTexture dest)
    {
        if (SystemInfo.supportsRayTracingShaders == false || rayTracingShader == null)
            return;        if (cameraWidth != Camera.main.pixelWidth || cameraHeight != Camera.main.pixelHeight)
        {
            if (rayTracingOutput)
                rayTracingOutput.Release();            rayTracingOutput = new RenderTexture(Camera.main.pixelWidth, Camera.main.pixelHeight, 0, RenderTextureFormat.ARGBHalf);
            rayTracingOutput.enableRandomWrite = true;
            rayTracingOutput.Create();            cameraWidth = Camera.main.pixelWidth;
            cameraHeight = Camera.main.pixelHeight;
        }        RayTracingInstanceCullingConfig cullingConfig = new RayTracingInstanceCullingConfig();        cullingConfig.flags = RayTracingInstanceCullingFlags.EnableLODCulling | RayTracingInstanceCullingFlags.EnableSphereCulling | RayTracingInstanceCullingFlags.EnableSolidAngleCulling;        // Configure LOD culling.
        cullingConfig.lodParameters.fieldOfView = Camera.main.fieldOfView;
        cullingConfig.lodParameters.cameraPosition = Camera.main.transform.position;
        cullingConfig.lodParameters.cameraPixelHeight = Camera.main.pixelHeight;
        cullingConfig.lodParameters.orthoSize = 0;
        cullingConfig.lodParameters.isOrthographic = false;        // Configure sphere culling. Accept only objects for which the enclosing AABBs are inside (or intersect) a sphere with a radius of 100 units around the camera.
        cullingConfig.sphereCenter = Camera.main.transform.position;
        cullingConfig.sphereRadius = 100.0f;        // Configure solid-angle culling. Accept only objects for which the projected solid angle with the apex in cullingConfig.lodParameters.cameraPosition is larger than 5 degrees.
        cullingConfig.minSolidAngle = 5.0f;        // Disable anyhit shaders for opaque geometries for best ray tracing performance.
        cullingConfig.subMeshFlagsConfig.opaqueMaterials = RayTracingSubMeshFlags.Enabled | RayTracingSubMeshFlags.ClosestHitOnly;        // Disable transparent geometries.
        cullingConfig.subMeshFlagsConfig.transparentMaterials = RayTracingSubMeshFlags.Disabled;        // Enable anyhit shaders for alpha-tested / cutout geometries.
        cullingConfig.subMeshFlagsConfig.alphaTestedMaterials = RayTracingSubMeshFlags.Enabled;        // Configure which triangles are double sided. For best ray tracing performance, triangle culling should be disabled.
        cullingConfig.triangleCullingConfig.checkDoubleSidedGIMaterial = true;
        cullingConfig.triangleCullingConfig.frontTriangleCounterClockwise = false;
        cullingConfig.triangleCullingConfig.optionalDoubleSidedShaderKeywords = new string[1];
        cullingConfig.triangleCullingConfig.optionalDoubleSidedShaderKeywords[0] = "_DOUBLESIDED_ON";
        cullingConfig.triangleCullingConfig.forceDoubleSided = false;        // Configure Material types. Render queue intervals can also be used here.
        cullingConfig.alphaTestedMaterialConfig.optionalShaderKeywords = new string[1];
        cullingConfig.alphaTestedMaterialConfig.optionalShaderKeywords[0] = "_ALPHATEST_ON";        cullingConfig.transparentMaterialConfig.optionalShaderKeywords = new string[1];
        cullingConfig.transparentMaterialConfig.optionalShaderKeywords[0] = "_SURFACE_TYPE_TRANSPARENT";        // Configure a Material test. Allow only Shaders that have a mandatory Shader Tag.
        cullingConfig.materialTest.requiredShaderTags = new RayTracingInstanceCullingShaderTagConfig[1];
        cullingConfig.materialTest.requiredShaderTags[0].tagId = new ShaderTagId("RenderPipeline");
        cullingConfig.materialTest.requiredShaderTags[0].tagValueId = new ShaderTagId("MyAwesomeRP");        List<RayTracingInstanceCullingTest> instanceTests = new List<RayTracingInstanceCullingTest>();        // Configure instance tests. There can be one instance test for each ray tracing effect for example.
        // The purpose of instance tests is to use different settings (layer, material types) per ray tracing effect.
        // Use InstanceInclusionMask argument of TraceRay HLSL function to mask different instance types.        if (enableRayTracedReflections)
        {
            RayTracingInstanceCullingTest instanceTest = new RayTracingInstanceCullingTest();
            instanceTest.allowTransparentMaterials = false;
            instanceTest.allowOpaqueMaterials = true;
            instanceTest.allowAlphaTestedMaterials = true;
            instanceTest.layerMask = -1;
            instanceTest.shadowCastingModeMask = (1 << (int)ShadowCastingMode.Off) | (1 << (int)ShadowCastingMode.On) | (1 << (int)ShadowCastingMode.TwoSided);
            instanceTest.instanceMask = 1 << 0;            instanceTests.Add(instanceTest);
        }        if (enableRayTracedShadows)
        {
            RayTracingInstanceCullingTest instanceTest = new RayTracingInstanceCullingTest();
            instanceTest.allowTransparentMaterials = false;
            instanceTest.allowOpaqueMaterials = true;
            instanceTest.allowAlphaTestedMaterials = true;
            instanceTest.layerMask = -1;
            instanceTest.shadowCastingModeMask = (1 << (int)ShadowCastingMode.On) | (1 << (int)ShadowCastingMode.TwoSided);
            instanceTest.instanceMask = 1 << 1;            instanceTests.Add(instanceTest);
        }        cullingConfig.instanceTests = instanceTests.ToArray();        rayTracingAccelStruct.ClearInstances();
        rayTracingAccelStruct.CullInstances(ref cullingConfig);        // Additional ray tracing instances can be added manually using RayTracingAccelerationStructure.AddInstance function.
        // rayTracingAccelStruct.AddInstance(...);        rayTracingAccelStruct.Build(Camera.main.transform.position);        // Use Shader Pass "Test" in surface (material) shaders.
        rayTracingShader.SetShaderPass("Test");        rayTracingShader.SetAccelerationStructure("g_AccelStruct", rayTracingAccelStruct);
        rayTracingShader.SetTexture("g_Output", rayTracingOutput);        rayTracingShader.Dispatch("MainRayGenShader", rayTracingOutput.width, rayTracingOutput.height, 1);        Graphics.Blit(rayTracingOutput, dest);
    }
}
```

This is an example of how to create, populate and build an acceleration structure. The content of the acceleration structure is specified by configuring culling and filtering parameters that are passed to the CullInstances function.
