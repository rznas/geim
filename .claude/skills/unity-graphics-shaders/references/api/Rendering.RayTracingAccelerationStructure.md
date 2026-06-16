<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Spatial data structure optimized for efficient ray tracing on the GPU.

RayTracingAccelerationStructure enables you to efficiently intersect rays against a subset of the Scene geometry using the GPU. This can be useful to implement various lighting algorithms, for example. This class only applies when SystemInfo.supportsRayTracing is true.

The RayTracingAccelerationStructure constructor takes a RayTracingAccelerationStructure.Settings that you can use to configure the acceleration structure. For example, RayTracingAccelerationStructure.Settings.rayTracingModeMask lets you filter out certain Renderers from the acceleration structure based on RayTracingAccelerationStructure.Settings.managementMode, which gives you the option to either let Unity manage the contents of the acceleration structure or handle them manually yourself. You can use methods like RayTracingAccelerationStructure.AddInstance, RayTracingAccelerationStructure.AddInstances, and RayTracingAccelerationStructure.RemoveInstance to manually add and remove instances from the structure.

You can improve ray tracing performance by including fewer instances in the acceleration structure. For example, you can exclude small or distant objects from the acceleration structure as they often have minimal impact on results. You can use RayTracingAccelerationStructure.CullInstances to add only the instances which match certain criteria described in RayTracingInstanceCullingConfig.

After modifying the contents of a RayTracingAccelerationStructure (for example by calling RayTracingAccelerationStructure.AddInstance) and before dispatching any shaders, you must call RayTracingAccelerationStructure.Build or CommandBuffer.BuildRayTracingAccelerationStructure to allocate necessary buffers and update the internal GPU representation.

Like other GPU resources, RayTracingAccelerationStructure instances must explicitly be passed to shaders. How to do this depends on what type of shader you're using. For Ray Tracing Shaders you can use RayTracingShader.SetAccelerationStructure or CommandBuffer.SetRayTracingAccelerationStructure. For Compute Shaders you can use ComputeShader.SetRayTracingAccelerationStructure or CommandBuffer.SetRayTracingAccelerationStructure. Finally, you can use Shader.SetGlobalRayTracingAccelerationStructure and CommandBuffer.SetGlobalRayTracingAccelerationStructure to make an acceleration structure globally available for all shader stages (including vertex and fragment shaders).

Additional resources: CommandBuffer.SetRayTracingAccelerationStructure, RayTracingShader.SetAccelerationStructure.

```csharp
// This snippet shows how to create a RayTracingAccelerationStructure and pass it to
// a ComputeShader. The compute shader is invoked once per screen pixel. For example,
// this could be used to implement ray traced shadows.using UnityEngine;
using UnityEngine.Rendering;[ExecuteInEditMode]
public class RayTracingExample : MonoBehaviour
{
    public ComputeShader computeShader;    private RenderTexture outputTexture;
    private RayTracingAccelerationStructure rtas;
    private int kernelIndex = -1;
    private uint kernelThreadGroupSizeX;
    private uint kernelThreadGroupSizeY;
    private uint kernelThreadGroupSizeZ;    void OnDisable()
    {
        ReleaseResources();
    }    private void Update()
    {
        if (!SystemInfo.supportsInlineRayTracing)
        {
            Debug.Log("Ray Queries (inline ray tracing) is not supported by this GPU or by the current graphics API.");
            return;
        }
        if (computeShader == null)
        {
            Debug.Log("Please assign a compute shader.");
            return;
        }        CreateResourcesIfNeeded(Camera.main.pixelWidth, Camera.main.pixelHeight);        CommandBuffer cmd = new CommandBuffer();
        cmd.BuildRayTracingAccelerationStructure(rtas);
        cmd.SetRayTracingAccelerationStructure(computeShader, kernelIndex, "g_AccelStruct", rtas);
        // Set more inputs here.
        cmd.SetComputeTextureParam(computeShader, kernelIndex, "g_Output", outputTexture);
        cmd.DispatchCompute(computeShader, kernelIndex, (int)((outputTexture.width + kernelThreadGroupSizeX + 1) / kernelThreadGroupSizeX),(int)((outputTexture.height + kernelThreadGroupSizeY + 1) / kernelThreadGroupSizeY), 1);        Graphics.ExecuteCommandBuffer(cmd);
    }    private void CreateResourcesIfNeeded(int width, int height)
    {
        if (rtas == null)
        {
            RayTracingAccelerationStructure.Settings settings = new RayTracingAccelerationStructure.Settings();
            settings.rayTracingModeMask = RayTracingAccelerationStructure.RayTracingModeMask.Everything;
            settings.managementMode = RayTracingAccelerationStructure.ManagementMode.Automatic;
            settings.layerMask = 255;            rtas = new RayTracingAccelerationStructure(settings);
        }        if (outputTexture == null || outputTexture.width != width || outputTexture.height != height)
        {
            if (outputTexture)
                outputTexture.Release();            outputTexture = new RenderTexture(width, height, 0, RenderTextureFormat.RHalf);
            outputTexture.enableRandomWrite = true;
            outputTexture.Create();
        }        if (kernelIndex == -1)
        {
            kernelIndex = computeShader.FindKernel("CSMain");
            Debug.Assert(kernelIndex != -1, "Kernel not found.");
            Debug.Assert(computeShader.IsSupported(kernelIndex), "Compute shader " + computeShader.name + " failed to compile or is not supported.");
            computeShader.GetKernelThreadGroupSizes(kernelIndex, out kernelThreadGroupSizeX, out kernelThreadGroupSizeY, out kernelThreadGroupSizeZ);
        }
    }    private void ReleaseResources()
    {
        if (rtas != null)
            rtas.Release();        if (outputTexture != null)
            outputTexture.Release();        rtas = null;
        outputTexture = null;
        kernelIndex = -1;
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| RayTracingAccelerationStructure | Creates a RayTracingAccelerationStructure with the given RayTracingAccelerationStructure.Settings. |

### Public Methods

| Method | Description |
| --- | --- |
| AddInstance | Adds a ray tracing instance to the RayTracingAccelerationStructure. |
| AddInstances | Adds an array of ray tracing Mesh instances to the RayTracingAccelerationStructure. |
| AddInstancesIndirect | Adds an array of ray tracing instances to the acceleration structure where the instance matrices are specified using a GraphicsBuffer. |
| AddVFXInstances | Adds the ray tracing instances associated with a VFXRenderer to the RayTracingAccelerationStructure. |
| Build | Builds acceleration structures on the GPU. Allocates any GPU memory required for storing acceleration structure data. |
| ClearInstances | Removes all ray tracing instances from the RayTracingAccelerationStructure. |
| CullInstances | Populates the RayTracingAccelerationStructure with ray tracing instances that Unity associates with Renderers in the Scene by using filtering and culling parameters. |
| Dispose | Destroys this RayTracingAccelerationStructure and frees the GPU memory used for storing acceleration structure data. |
| GetInstanceCount | Returns the number of ray tracing instances in the RayTracingAccelerationStructure. |
| GetSize | Returns the total size of this RayTracingAccelerationStructure in GPU memory in bytes. |
| Release | Destroys this RayTracingAccelerationStructure and frees the GPU memory used for storing acceleration structure data. |
| RemoveInstance | Removes a ray tracing instance associated with a Renderer from this RayTracingAccelerationStructure. |
| RemoveInstances | Removes ray tracing instances from the RayTracingAccelerationStructure using filtering based on layer and RayTracingMode. |
| RemoveVFXInstances | Removes the ray tracing instances associated with a VFXRenderer from the RayTracingAccelerationStructure. |
| UpdateInstanceGeometry | Marks the geometry of the ray tracing instance as dirty. |
| UpdateInstanceID | Updates the instance ID of a ray tracing instance. |
| UpdateInstanceMask | Updates the instance mask of a ray tracing instance. |
| UpdateInstancePropertyBlock | Updates per ray tracing instance Material properties. |
| UpdateInstanceTransform | Updates the transformation of a ray tracing instance. |
