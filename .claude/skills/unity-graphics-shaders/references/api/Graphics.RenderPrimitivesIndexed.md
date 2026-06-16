<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.RenderPrimitivesIndexed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rparams | The parameters Unity uses to render the primitives. |
| topology | Primitive topology (for example, triangles or lines). |
| indexBuffer | The index buffer for the rendered primitives. |
| indexCount | The number of indices per instance. |
| startIndex | The first index in the `indexBuffer`. |
| instanceCount | The number of instances to render. |

### Description

Renders indexed primitives with GPU instancing and a custom shader.

Renders a given number of instances and primitives that have specific topology. This method requires custom shaders to fetch or calculate vertex data using the `SV_VertexID` semantic, which is set with values in the `indexBuffer`. To access instance ID use `SV_InstanceID` semantic.

Additional resources: RenderPrimitives.

The following example renders 10 instances of a Mesh using `RenderPrimitivesIndexed`. The associated Material must use the below custom shader:

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public Material material;
    public Mesh mesh;    GraphicsBuffer meshTriangles;
    GraphicsBuffer meshPositions;    void Start()
    {
        // note: remember to check "Read/Write" on the mesh asset to get access to the geometry data
        meshTriangles = new GraphicsBuffer(GraphicsBuffer.Target.Structured, mesh.triangles.Length, sizeof(int));
        meshTriangles.SetData(mesh.triangles);
        meshPositions = new GraphicsBuffer(GraphicsBuffer.Target.Structured, mesh.vertices.Length, 3 * sizeof(float));
        meshPositions.SetData(mesh.vertices);
    }    void OnDestroy()
    {
        meshTriangles?.Dispose();
        meshTriangles = null;
        meshPositions?.Dispose();
        meshPositions = null;
    }    void Update()
    {
        RenderParams rp = new RenderParams(material);
        rp.worldBounds = new Bounds(Vector3.zero, 10000*Vector3.one); // use tighter bounds
        rp.matProps = new MaterialPropertyBlock();
        rp.matProps.SetBuffer("_Positions", meshPositions);
        rp.matProps.SetInt("_BaseVertexIndex", (int)mesh.GetBaseVertex(0));
        rp.matProps.SetMatrix("_ObjectToWorld", Matrix4x4.Translate(new Vector3(-4.5f, 0, 0)));
        rp.matProps.SetFloat("_NumInstances", 10.0f);
        Graphics.RenderPrimitivesIndexed(rp, MeshTopology.Triangles, meshTriangles, meshTriangles.count, (int)mesh.GetIndexStart(0), 10);
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
            #pragma fragment frag            #include "UnityCG.cginc"            struct v2f
            {
                float4 pos : SV_POSITION;
                float4 color : COLOR0;
            };            StructuredBuffer<float3> _Positions;
            uniform uint _BaseVertexIndex;
            uniform float4x4 _ObjectToWorld;
            uniform float _NumInstances;            v2f vert(uint vertexID: SV_VertexID, uint instanceID : SV_InstanceID)
            {
                v2f o;
                float3 pos = _Positions[vertexID + _BaseVertexIndex];
                float4 wpos = mul(_ObjectToWorld, float4(pos + float3(instanceID, 0, 0), 1.0f));
                o.pos = mul(UNITY_MATRIX_VP, wpos);
                o.color = float4(instanceID / _NumInstances, 0.0f, 0.0f, 0.0f);
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
