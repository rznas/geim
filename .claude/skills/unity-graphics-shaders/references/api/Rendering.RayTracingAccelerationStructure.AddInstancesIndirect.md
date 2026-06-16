<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.AddInstancesIndirect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| config | The common parameters that these ray tracing instances use. |
| instanceMatrices | The GraphicsBuffer to contain transformation matrices. |
| maxInstanceCount | The maximum number of ray tracing instances to add to the acceleration structure. |
| argsBuffer | The GraphicsBuffer containing 2 integer values at argsOffset byte offset: start instance and instance count. |
| argsOffset | The offset, in bytes, into argsBuffer where indirect arguments are stored. |
| id | An optional instance ID value that you can access in HLSL with the `InstanceID()` function. Unity assigns consecutive instance IDs to each mesh instance, starting with the value of `id`. |

### Returns

**int** The value representing a handle that you can use to perform later actions (e.g. RemoveInstance), or 0 if the instances are not added successfully.

### Description

Adds an array of ray tracing instances to the acceleration structure where the instance matrices are specified using a GraphicsBuffer.

The `config` function argument specifies the relevant source geometry and associated parameters for all ray tracing instances. The source geometry can be either specified using a Mesh or GraphicsBuffers containing vertex and index data.

The world transformation matrices for ray tracing instances are specified using the instanceMatrices function argument. Only 4x4 floating-point matrices are supported where the elements are stored using column-major layout (the same as Matrix4x4 layout). The buffer must be created using the GraphicsBuffer.Target.Structured or GraphicsBuffer.Target.Append flags. You can specify the contents of the buffer by simply calling instanceMatrices.SetData(Matrix4x4[]) or you can employ a more advanced algorithm where the matrix buffer is filled in a compute shader in a GPU-driven rendering pipeline, for example.

The `maxInstanceCount` argument is necessary to let Unity to allocate GPU memory for the acceleration structure (TLAS) used for ray tracing. The final number of valid ray tracing instances added to the acceleration structure depends on both the `maxInstanceCount` value and the `argsBuffer` values (start instance and instance count). An internal compute shader handles the process of adding instances. The compute shader is dispatched once for each `AddInstanceIndirect` call when the acceleration structure is built.

When `AddInstancesIndirect` is used, Unity enables the `INSTANCING_ON` shader keyword. To declare the shader keyword in HLSL, add the line `#pragma multi_compile _ INSTANCING_ON` in the shader pass specified in RayTracingShader.SetShaderPass or CommandBuffer.SetRayTracingShaderPass. To access per-instance data relative to this array of ray tracing instances, use `InstanceIndex() - unity_BaseInstanceID` to generate a zero-based instance index in hit shaders.

When you have added all required instances, use RayTracingAccelerationStructure.Build or CommandBuffer.BuildRayTracingAccelerationStructure to build the acceleration structure on the GPU.

This functionality doesn't have any special hardware requirements in addition to ray tracing support requirements (SystemInfo.supportsRayTracing must be true). In DirectX Raytracing (DXR), this function causes all ray tracing instances in the array to use only one shader record from the shader table, which reduces the CPU overhead on the render thread for binding GPU resources to hit shaders.

This method returns a single instance handle which you can use later to perform actions that affect all ray tracing instances added using this method.

Additional resources: RayTracingAccelerationStructure.RemoveInstance, RayTracingAccelerationStructure.Build, GraphicsBuffer.CopyCount.

### Parameters

| Parameter | Description |
| --- | --- |
| config | The common parameters that these ray tracing instances use. |
| instanceData | The GraphicsBuffer to contain custom instance data. |
| instanceType | A type that you define in your scripts to describe the instance data format. |
| instanceIndices | An optional GraphicsBuffer that contains indices of ray tracing instances from instanceData to be added to the acceleration structure. |
| maxInstanceCount | The maximum number of ray tracing instances to add to the acceleration structure. |
| argsBuffer | The GraphicsBuffer containing 2 integer values at argsOffset byte offset: start instance and instance count. |
| argsOffset | The offset, in bytes, into argsBuffer where indirect arguments are stored. |
| id | An optional instance ID value that you can access in HLSL with the `InstanceID()` function. Unity assigns consecutive instance IDs to each mesh instance, starting with the value of `id`. |

### Returns

**void** The value representing a handle that you can use to perform later actions (e.g. RemoveInstance), or 0 if the instances are not added successfully.

### Description

Adds an array of ray tracing instances to the acceleration structure where each instance can have a different transformation matrix, geometry and material.

The `config` function argument specifies the geometries, materials and other common parameters for all ray tracing instances. The source geometries can be specified using GraphicsBuffers containing vertex and index data. Use the `config.subGeometries` array to specify where each geometry starts and ends in the vertex and index buffers. You can easily use Mesh data with this method by calling getter methods from the Mesh class to retrieve the vertex and index buffers and associated data. Use the `config.materials` array to store the materials to be used by ray tracing instances. 

The `instanceData` buffer contains custom instance data. Each instance must contain the following mandatory data: the instance transformation matrix, an index into `config.subGeometries` to specify which geometry to use and an index into `config.materials` to specify which material to use. The transformation matrix must be a 4x4 floating-point matrix where the elements are stored using column-major layout (the same as Matrix4x4 layout). The geometry and material indices are represented using integer values. If the values are outside of their respective valid range, Unity clamps the values to the size of the `config.subGeometries` and `config.materials` respectively.

To define the instance data format, pass a user-defined structure either as a generic type template argument or using the `instanceType` argument, for example by calling `AddInstancesIndirect<MyInstanceData>` or the equivalent, using `typeof(MyInstanceData)` for the `instanceType` argument. The structure can have any name and format but it needs to contain the following mandatory named fields: `objectToWorld`, `geometryIndex` and `materialIndex`. Unity throws an exception if any of these fields are not present in the structure that you provide.

The `instanceIndices` buffer is optional and must be created using the GraphicsBuffer.Target.Structured or GraphicsBuffer.Target.Append flags. When using the `instanceIndices` buffer, the values in `argsBuffer` (startInstance and instanceCount) specify indices into this buffer instead of `instanceData` buffer. Use a GraphicsBuffer.Target.Append flag if you append instance indices from a compute shader into `instanceIndices` buffer. In this case, call CommandBuffer.CopyCounterValue or GraphicsBuffer.CopyCount to copy the final instance count from `instanceIndices` into `argsBuffer`. This way, you can control the amount of instances to be added to the acceleration structure from a compute shader, for example by culling some of the instances.

The `maxInstanceCount` argument is necessary to let Unity to allocate GPU memory for the acceleration structure (TLAS) used for ray tracing. The final number of valid ray tracing instances added to the acceleration structure depends on the `maxInstanceCount` value, the amount of indices in the `instanceIndices` buffer, and the `argsBuffer` values (start instance and instance count). An internal compute shader handles the process of adding instances. The compute shader is dispatched once for each `AddInstancesIndirect` call when the acceleration structure is built on the GPU.

When `AddInstancesIndirect` is used, Unity enables the `INSTANCING_ON` shader keyword. To declare the shader keyword in HLSL, add the line `#pragma multi_compile _ INSTANCING_ON` in the shader pass specified in RayTracingShader.SetShaderPass or CommandBuffer.SetRayTracingShaderPass. To access per-instance data relative to the array of ray tracing instances added using a single `AddInstancesIndirect` call, use `InstanceIndex() - unity_BaseInstanceID` to generate a zero-based instance index in hit shaders. If you need to access additional per-instance data in hit shader, use `config.materialProperties` to bind the data.

Refer to the `GetMeshInfo` HLSL function from `UnityRayTracingMeshUtils.cginc` for more information about how to read vertex data from `config.vertexBuffer` in hit shaders. For every geometry in the `config.subGeometries` array, Unity prepares a `MeshInfo` entry into the built-in `unity_MeshInfo_RT` structured buffer. For every entry in `config.vertexAttributes` array, Unity prepares a `VertexAttributeInfo` entry into the built-in `unity_MeshVertexDeclaration_RT` structured buffer. `MeshInfo` and `VertexAttributesInfo` contain the basic information for reading vertex and index data in hit shaders.

When you have added all required instances, use RayTracingAccelerationStructure.Build or CommandBuffer.BuildRayTracingAccelerationStructure to build the acceleration structure on the GPU.

This functionality doesn't have any special hardware requirements in addition to ray tracing support requirements (SystemInfo.supportsRayTracing must be true). In DirectX Raytracing (DXR), this function causes Unity to set up one shader record for each Material provided in the `config.materials` array, which reduces the CPU overhead on the render thread for binding GPU resources to hit shaders.

This method returns a single instance handle which you can use later to perform actions that affect all ray tracing instances added using this method.

Additional resources: RayTracingAccelerationStructure.RemoveInstance, RayTracingAccelerationStructure.Build, Mesh.GetVertexBuffer, Mesh.GetIndexBuffer, Mesh.GetVertexAttributes.

```csharp
using System.Collections.Generic;
using System.Runtime.InteropServices;
using Unity.Collections;
using UnityEngine;
using UnityEngine.Rendering;[ExecuteInEditMode]
public class MeshInstancing : MonoBehaviour
{
    [SerializeField] RayTracingShader rayTracingShader;    [SerializeField] Material material1;
    [SerializeField] Material material2;    private uint cameraWidth = 0;
    private uint cameraHeight = 0;    private int instanceRows = 100;
    private int instanceColumns = 100;    private RenderTexture rayTracingOutput;    private RayTracingAccelerationStructure rtas;    private GraphicsBuffer vertexBuffer;
    private GraphicsBuffer indexBuffer;
    private GraphicsBuffer instanceDataBuffer;
    private GraphicsBuffer indirectArgsBuffer;    private void ReleaseResources()
    {
        cameraWidth = 0;
        cameraHeight = 0;        if (rtas != null)
            rtas.Release();        if (rayTracingOutput != null)
            rayTracingOutput.Release();        if (vertexBuffer != null)
            vertexBuffer.Release();        if (indexBuffer != null)
            indexBuffer.Release();        if (instanceDataBuffer != null)
            instanceDataBuffer.Release();        if (indirectArgsBuffer != null)
            indirectArgsBuffer.Release();        rtas = null;
        rayTracingOutput = null;
        vertexBuffer = null;
        indexBuffer = null;
        instanceDataBuffer = null;
        indirectArgsBuffer = null;
    }    struct Vertex
    {
        public Vertex(Vector3 pos, Vector3 n) { position = pos; normal = n; }
        public Vector3 position;
        public Vector3 normal;
    }    // objectToWorld, materialIndex, and geometryIndex fields are mandatory.
    public struct RayTracingPerInstanceData
    {
        public Matrix4x4 objectToWorld;
        public int data1;
        public uint materialIndex;
        public uint geometryIndex;
        public float data2;
        public Vector4 data3;
    };    private void CreateResources()
    {
        if (rtas == null)
        {
            RayTracingAccelerationStructure.Settings settings = new RayTracingAccelerationStructure.Settings
            {
                managementMode = RayTracingAccelerationStructure.ManagementMode.Manual,
                rayTracingModeMask = RayTracingAccelerationStructure.RayTracingModeMask.Everything,
                layerMask = -1,
                buildFlagsStaticGeometries = RayTracingAccelerationStructureBuildFlags.PreferFastTrace | RayTracingAccelerationStructureBuildFlags.MinimizeMemory,
                enableCompaction = true
            };
            rtas = new RayTracingAccelerationStructure(settings);
        }        if (cameraWidth != Camera.main.pixelWidth || cameraHeight != Camera.main.pixelHeight)
        {
            if (rayTracingOutput != null)
                rayTracingOutput.Release();            rayTracingOutput = new RenderTexture(Camera.main.pixelWidth, Camera.main.pixelHeight, 0, RenderTextureFormat.ARGBHalf);
            rayTracingOutput.enableRandomWrite = true;
            rayTracingOutput.Create();            cameraWidth = (uint)Camera.main.pixelWidth;
            cameraHeight = (uint)Camera.main.pixelHeight;
        }        // The vertex and index buffers for the source geometry will be specified in RayTracingMultiGeometryInstanceConfig.vertexBuffer and indexBuffer.
        // Setup a vertex buffer that contains a quad and a triangle. The vertex contains the position and the normal.
        if (vertexBuffer == null)
        {
            List<Vertex> vertices = new List<Vertex>
            {
                // Add a quad.
                new Vertex(new Vector3(1, 0, -1), new Vector3(0, 1, 0)),
                new Vertex(new Vector3(1, 0, 1), new Vector3(0, 1, 0)),
                new Vertex(new Vector3(-1, 0, 1), new Vector3(0, 1, 0)),
                new Vertex(new Vector3(-1, 0, -1), new Vector3(0, 1, 0)),                // Add a triangle.
                new Vertex(new Vector3(1, 0, 0), new Vector3(0, 0, 1)),
                new Vertex(new Vector3(-1, 0, 0), new Vector3(0, 0, 1)),
                new Vertex(new Vector3(0, 3, 0), new Vector3(0, 0, 1)),
            };            vertexBuffer = new GraphicsBuffer(GraphicsBuffer.Target.Raw | GraphicsBuffer.Target.Vertex, vertices.Count, Marshal.SizeOf(typeof(Vertex)));
            vertexBuffer.SetData(vertices);
        }        // The geometry sub-ranges will be specified in RayTracingMultiGeometryInstanceConfig.subGeometries.          
        if (indexBuffer == null)
        {
            List<uint> indices = new List<uint>()
            {
                 // 2 triangles for the quad.
                0, 1, 2, 0, 2, 3,                // 1 triangle.
                4, 5, 6,
            };            indexBuffer = new GraphicsBuffer(GraphicsBuffer.Target.Raw | GraphicsBuffer.Target.Index, indices.Count, sizeof(uint));
            indexBuffer.SetData(indices);
        }        if (instanceDataBuffer == null)
        {
            int instanceCount = instanceRows * instanceColumns;            // Generate a list of transformation matrices.
            NativeArray<Matrix4x4> matrices = new NativeArray<Matrix4x4>(instanceCount, Allocator.Temp);            int index = 0;            Matrix4x4 m = Matrix4x4.identity;            float angle = 0;            // Arrange the instances into a matrix.
            for (int row = 0; row < instanceRows; row++)
            {
                float z = row + 0.5f - instanceRows * 0.5f;                for (int column = 0; column < instanceColumns; column++)
                {
                    float x = column + 0.5f - instanceColumns * 0.5f;                    angle += 10.0f;                    Quaternion rotation = Quaternion.Euler(0, angle, 0);                    m.SetTRS(new Vector3(5.5f * x, 4.001f, 5.5f * z), rotation, new Vector3(2, 2, 2));                    matrices[index] = m;                    index++;
                }
            }            instanceDataBuffer = new GraphicsBuffer(GraphicsBuffer.Target.Raw, instanceCount, Marshal.SizeOf(typeof(RayTracingPerInstanceData)));            RayTracingPerInstanceData[] perInstanceData = new RayTracingPerInstanceData[instanceCount];            Random.InitState(12345);            for (int i = 0; i < instanceCount; i++)
            {
                perInstanceData[i] = new RayTracingPerInstanceData
                {
                    // Assign a random geometry and material to each instance.
                    objectToWorld = matrices[i],
                    materialIndex = (uint)Random.Range(0, 2),
                    geometryIndex = (uint)Random.Range(0, 2),
                    data1 = i,
                    data2 = 3.14f,
                    data3 = new Vector4(1, 2, 3, 4),
                };
            }            instanceDataBuffer.SetData(perInstanceData);
        }        if (indirectArgsBuffer == null)
        {
            indirectArgsBuffer = new GraphicsBuffer(GraphicsBuffer.Target.Raw, 1, 2 * sizeof(int));
            int[] ints = new int[2]
            {
                0,                               // instanceStart
                instanceRows * instanceColumns   // instanceCount
            };            indirectArgsBuffer.SetData(ints);
        }
    }    void OnDestroy()
    {
        ReleaseResources();
    }    void OnDisable()
    {
        ReleaseResources();
    }    [ImageEffectOpaque]
    void OnRenderImage(RenderTexture src, RenderTexture dest)
    {
        if (SystemInfo.supportsRayTracing == false)
        {
            Debug.Log("The Ray Tracing API is not supported by this GPU or by the current graphics API.");
            Graphics.Blit(src, dest);
            return;
        }        if (rayTracingShader == null)
        {
            Debug.Log("Please set the RayTracingShader.");
            Graphics.Blit(src, dest);
            return;
        }        CreateResources();        rtas.ClearInstances();        CommandBuffer cmdBuffer = new CommandBuffer();        Material[] materials = new Material[2];
        materials[0] = material1;
        materials[1] = material2;        VertexAttributeDescriptor[] vertexDescs = new VertexAttributeDescriptor[2];
        vertexDescs[0] = new VertexAttributeDescriptor(VertexAttribute.Position, VertexAttributeFormat.Float32, 3, 0);
        vertexDescs[1] = new VertexAttributeDescriptor(VertexAttribute.Normal, VertexAttributeFormat.Float32, 3, 0);        RayTracingMultiGeometryInstanceConfig instances = new RayTracingMultiGeometryInstanceConfig();        instances.vertexBuffer = vertexBuffer;
        instances.vertexAttributes = vertexDescs;
        instances.indexBuffer = indexBuffer;
        instances.materials = materials;
        instances.rayTracingMode = UnityEngine.Experimental.Rendering.RayTracingMode.Static;        // Configure the 2 geometries.
        // The geometries in this example are considered opaque. When cutout materials are used (for example foliage), use RayTracingSubMeshFlags.Enabled flag alone to enable any hit shaders.
        instances.subGeometries = new RayTracingSubGeometryDesc[2]
        {
            // The quad.
            new RayTracingSubGeometryDesc
            {
                indexStart = 0,
                indexCount = 2 * 3,
                flags = RayTracingSubMeshFlags.Enabled | RayTracingSubMeshFlags.ClosestHitOnly
            },            // The triangle is right after the quad in the vertex buffer.
            new RayTracingSubGeometryDesc()
            {
                indexStart = 2 * 3,
                indexCount = 3,
                flags = RayTracingSubMeshFlags.Enabled | RayTracingSubMeshFlags.ClosestHitOnly
            }
        };        // Not using instance indices in this example.
        // We add all the instances from instanceDataBuffer.
        rtas.AddInstancesIndirect<RayTracingPerInstanceData>(instances, instanceDataBuffer, null, -1, indirectArgsBuffer, 0);        cmdBuffer.BuildRayTracingAccelerationStructure(rtas);        cmdBuffer.SetRayTracingShaderPass(rayTracingShader, "Test");        // Input
        cmdBuffer.SetRayTracingAccelerationStructure(rayTracingShader, Shader.PropertyToID("g_AccelStruct"), rtas);
        cmdBuffer.SetRayTracingFloatParam(rayTracingShader, Shader.PropertyToID("g_Zoom"), Mathf.Tan(Mathf.Deg2Rad * Camera.main.fieldOfView * 0.5f));        // Output
        cmdBuffer.SetRayTracingTextureParam(rayTracingShader, Shader.PropertyToID("g_Output"), rayTracingOutput);        cmdBuffer.DispatchRays(rayTracingShader, "MainRayGenShader", cameraWidth, cameraHeight, 1);        Graphics.ExecuteCommandBuffer(cmdBuffer);        cmdBuffer.Release();        Graphics.Blit(rayTracingOutput, dest);
    }
}
```

The script in this example calls AddInstancesIndirect<T> to add a number of ray tracing instances using random geometries and materials to an acceleration structure.
