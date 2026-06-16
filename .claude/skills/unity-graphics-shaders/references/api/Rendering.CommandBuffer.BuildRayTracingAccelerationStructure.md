<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.BuildRayTracingAccelerationStructure.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| accelerationStructure | The RayTracingAccelerationStructure to be generated. |
| relativeOrigin | The relative origin of ray tracing instances. The default value is Vector3.zero. To use camera-relative ray-tracing, set this parameter to the position of the camera. |
| buildSettings | The BuildSettings to use. |

### Description

Adds a command to build the RayTracingAccelerationStructure to be used in a ray tracing dispatch or when using inline ray tracing (ray queries).

To ensure that the acceleration structure is up to date, call this method before using the acceleration structure in ray tracing shaders (for example before a CommandBuffer.DispatchRays call) or when using inline ray tracing. In the following example, the `PositionRandomInstances` method uses a compute shader dispatch to modify the world space positions of instances of a mesh, then the RayTracingAccelerationStructure is rebuilt.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class RayTracingInstanceManager : MonoBehaviour
{
    public Mesh instanceMesh;
    public Material instanceMaterial;
    public int maxInstanceCount = 1024;    public Vector3 spawnBounds = new Vector3(10f, 0f, 10f);
    public ComputeShader positioningShader;
    public RayTracingShader rayTracingShader;    private RayTracingAccelerationStructure rtas;
    private GraphicsBuffer instanceBuffer;
    private GraphicsBuffer countBuffer;
    private CommandBuffer cmd;
    private RenderTexture rayTracingOutput;
    private uint cameraWidth = 0;
    private uint cameraHeight = 0;    void Start()
    {
        InitializeRayTracing();
        UpdateRaytracingWorld();
    }    void InitializeRayTracing()
    {
        // Create command buffer
        cmd = new CommandBuffer();
        cmd.name = "Ray Tracing Indirect Setup";        // Set up acceleration structure
        var settings = new RayTracingAccelerationStructure.Settings
        {
            managementMode = RayTracingAccelerationStructure.ManagementMode.Manual,
            layerMask = -1
        };
        rtas = new RayTracingAccelerationStructure(settings);        // Create buffers
        instanceBuffer = new GraphicsBuffer(
            GraphicsBuffer.Target.Structured,
            maxInstanceCount,
            System.Runtime.InteropServices.Marshal.SizeOf(typeof(Matrix4x4))
        );        countBuffer = new GraphicsBuffer(
            GraphicsBuffer.Target.IndirectArguments,
            1,
            sizeof(int)
        );
    }    void CreateResources()
    {
        if (cameraWidth != Camera.main.pixelWidth || cameraHeight != Camera.main.pixelHeight)
        {
            if (rayTracingOutput != null)
                rayTracingOutput.Release();            rayTracingOutput = new RenderTexture(Camera.main.pixelWidth, Camera.main.pixelHeight, 0, RenderTextureFormat.ARGBHalf);
            rayTracingOutput.enableRandomWrite = true;
            rayTracingOutput.Create();            cameraWidth = (uint)Camera.main.pixelWidth;
            cameraHeight = (uint)Camera.main.pixelHeight;
        }
   }    void PositionRandomInstances()
    {
        if (positioningShader == null)
        {
            Debug.LogError("Error: Compute shader is missing. Assign a compute shader to the positioningShader property.");
            return;
        }        // Add instances indirectly
        RayTracingMeshInstanceConfig meshConfig = new RayTracingMeshInstanceConfig();
        meshConfig.mesh = instanceMesh;
        meshConfig.material = instanceMaterial;
        meshConfig.enableTriangleCulling = false;
        meshConfig.lightProbeUsage = LightProbeUsage.Off;
        meshConfig.layer = -1;        rtas.AddInstancesIndirect(meshConfig, instanceBuffer, maxInstanceCount, countBuffer, 0);        // Upload data to buffers
        cmd.SetBufferData(countBuffer, new int[] { 0, maxInstanceCount });        // Generate random instance positions on GPU using a compute shader.
        cmd.SetComputeVectorParam(positioningShader, "SpawnBounds", spawnBounds);
        cmd.SetComputeBufferParam(positioningShader, 0, "InstanceMatrices", instanceBuffer);
        cmd.SetComputeIntParam(positioningShader, "TotalInstanceCount", maxInstanceCount);        int threadGroups = (maxInstanceCount + 64 - 1) / 64;
        cmd.DispatchCompute(positioningShader, 0, threadGroups, 1, 1);
    }    void UpdateRaytracingWorld()
    {
        if (instanceMesh == null || instanceMaterial == null)
        {
            Debug.LogError("Error: Mesh or material is missing. Assign a mesh to the instanceMesh property and a material to the instanceMaterial property.");
            return;
        }        // Clear previous instances
        rtas.ClearInstances();        PositionRandomInstances();        // Build acceleration structure from the indirect instances.
        cmd.BuildRayTracingAccelerationStructure(rtas);        // The command buffer will be executed in the next OnRenderImage
    }    void Update()
    {
        // Example: Update structure when space is pressed
        if (Input.GetKeyDown(KeyCode.Space))
        {
            UpdateRaytracingWorld();
        }
    }    [ImageEffectOpaque]
    void OnRenderImage(RenderTexture src, RenderTexture dest)
    {
        if (!SystemInfo.supportsRayTracing || !rayTracingShader)
        {
            Debug.LogWarning("Warning: The Ray Tracing API is not supported by this GPU or by the current graphics API.");
            Graphics.Blit(src, dest);
            return;
        }        CreateResources();        cmd.SetRayTracingShaderPass(rayTracingShader, "Test");        // Input
        cmd.SetRayTracingAccelerationStructure(rayTracingShader, Shader.PropertyToID("g_AccelStruct"), rtas);
        cmd.SetRayTracingMatrixParam(rayTracingShader, Shader.PropertyToID("g_InvViewMatrix"), Camera.main.cameraToWorldMatrix);
        cmd.SetGlobalVector(Shader.PropertyToID("g_CameraPos"), Camera.main.transform.position);        // Output
        cmd.SetRayTracingTextureParam(rayTracingShader, Shader.PropertyToID("g_Output"), rayTracingOutput);        // Execute the raytracing shader
        cmd.DispatchRays(rayTracingShader, "MainRayGenShader", cameraWidth, cameraHeight, 1);        // Execute command buffer
        Graphics.ExecuteCommandBuffer(cmd);
        cmd.Clear();        Graphics.Blit(rayTracingOutput, dest);
    }    void OnDisable()
    {
        // Cleanup
        if (instanceBuffer != null)
        {
            instanceBuffer.Release();
            instanceBuffer = null;
        }        if (countBuffer != null)
        {
            countBuffer.Release();
            countBuffer = null;
        }        if (rtas != null)
        {
            rtas.Dispose();
            rtas = null;
        }        if (cmd != null)
        {
            cmd.Release();
            cmd = null;
        }        if (rayTracingOutput != null)
        {
            rayTracingOutput.Release();
            rayTracingOutput = null;
        }
    }
}
```

Additional resources: SetRayTracingAccelerationStructure, SetGlobalRayTracingAccelerationStructure, DispatchRays, RayTracingAccelerationStructure.Build.
