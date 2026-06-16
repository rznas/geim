<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.RenderPrimitivesIndirect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rparams | The parameters Unity uses to render the primitives. |
| topology | Primitive topology (for example, triangles or lines). |
| argsBuffer | A graphics buffer that provides rendering command arguments (see IndirectDrawArgs). |
| commandCount | The number of rendering commands to execute in the `argsBuffer`. |
| startCommand | The first command to execute in the `argsBuffer`. |

### Description

Renders primitives with GPU instancing and a custom shader using rendering command arguments from `argsBuffer`.

This function provides a way to control rendering command arguments from GPU to render a given number of primitives and instances. Use `RenderParams.worldBounds` to define bounds to cull and sort the geometry rendered with the method as a single entity.

This function only works on platforms that support compute shaders.

Add the following lines in the pass section of a shader to access command, instance and vertex ID's as specified in UnityIndirect.cginc: Additional resources: RenderMeshIndirect.

```csharp
#define UNITY_INDIRECT_DRAW_ARGS IndirectDrawArgs
#include "UnityIndirect.cginc"
```

Add the following line to the beginning of a shader function to setup the ID access functions:

```csharp
InitIndirectDrawArgs(0);
```

The following example executes two indirect rendering commands. Each command renders 10 Mesh instances. The associated Material must use the below custom shader:

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public Material material;
    public Mesh mesh;    GraphicsBuffer meshTriangles;
    GraphicsBuffer meshPositions;
    GraphicsBuffer commandBuf;
    GraphicsBuffer.IndirectDrawArgs[] commandData;
    const int commandCount = 2;    void Start()
    {
        // note: remember to check "Read/Write" on the mesh asset to get access to the geometry data
        meshTriangles = new GraphicsBuffer(GraphicsBuffer.Target.Structured, mesh.triangles.Length, sizeof(int));
        meshTriangles.SetData(mesh.triangles);
        meshPositions = new GraphicsBuffer(GraphicsBuffer.Target.Structured, mesh.vertices.Length, 3 * sizeof(float));
        meshPositions.SetData(mesh.vertices);
        commandBuf = new GraphicsBuffer(GraphicsBuffer.Target.IndirectArguments, commandCount, GraphicsBuffer.IndirectDrawArgs.size);
        commandData = new GraphicsBuffer.IndirectDrawArgs[commandCount];
    }    void OnDestroy()
    {
        meshTriangles?.Dispose();
        meshTriangles = null;
        meshPositions?.Dispose();
        meshPositions = null;
        commandBuf?.Dispose();
        commandBuf = null;
    }    void Update()
    {
        RenderParams rp = new RenderParams(material);
        rp.worldBounds = new Bounds(Vector3.zero, 10000*Vector3.one); // use tighter bounds
        rp.matProps = new MaterialPropertyBlock();
        rp.matProps.SetBuffer("_Triangles", meshTriangles);
        rp.matProps.SetBuffer("_Positions", meshPositions);
        rp.matProps.SetInt("_BaseVertexIndex", (int)mesh.GetBaseVertex(0));
        rp.matProps.SetMatrix("_ObjectToWorld", Matrix4x4.Translate(new Vector3(-4.5f, 0, 0)));
        commandData[0].vertexCountPerInstance = mesh.GetIndexCount(0);
        commandData[0].instanceCount = 10;
        commandData[1].vertexCountPerInstance = mesh.GetIndexCount(0);
        commandData[1].instanceCount = 10;
        commandBuf.SetData(commandData);
        Graphics.RenderPrimitivesIndirect(rp, MeshTopology.Triangles, commandBuf, commandCount);
    }
}
```

Use the following example shader with the above C# example code:

```csharp
Shader "ExampleShader"
{
    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag            #include "UnityCG.cginc"
            #define UNITY_INDIRECT_DRAW_ARGS IndirectDrawArgs
            #include "UnityIndirect.cginc"            struct v2f
            {
                float4 pos : SV_POSITION;
                float4 color : COLOR0;
            };            StructuredBuffer<int> _Triangles;
            StructuredBuffer<float3> _Positions;
            uniform uint _BaseVertexIndex;
            uniform float4x4 _ObjectToWorld;            v2f vert(uint svVertexID: SV_VertexID, uint svInstanceID : SV_InstanceID)
            {
                InitIndirectDrawArgs(0);
                v2f o;
                uint cmdID = GetCommandID(0);
                uint instanceID = GetIndirectInstanceID(svInstanceID);
                float3 pos = _Positions[_Triangles[GetIndirectVertexID(svVertexID)] + _BaseVertexIndex];
                float4 wpos = mul(_ObjectToWorld, float4(pos + float3(instanceID, cmdID, 0.0f), 1.0f));
                o.pos = mul(UNITY_MATRIX_VP, wpos);
                o.color = float4(cmdID & 1 ? 0.0f : 1.0f, cmdID & 1 ? 1.0f : 0.0f, instanceID / float(GetIndirectInstanceCount()), 0.0f);
                return o;
            }            float4 frag(v2f i) : SV_Target
            {
                return i.color;
            }
            ENDCG
        }
    }
}
```
