<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.RenderMeshPrimitives.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rparams | The parameters Unity uses to render the Mesh primitives. |
| mesh | The Mesh to render. |
| submeshIndex | The index of a submesh Unity renders when the Mesh contains multiple Materials (submeshes). For a Mesh with a single Material, use value 0. |
| instanceCount | The number of instances to render. |

### Description

Renders multiple instances of a Mesh using GPU instancing and a custom shader.

This method renders multiple instances of the same Mesh, similar to Graphics.RenderMeshIndirect, but provides the number of instances and other rendering command arguments as function arguments.

 Use `SV_InstanceID` semantic in shaders to access the rendered instance.

The following example uses `RenderMeshPrimitives` to render 10 Mesh instances. The associated Material must use the below custom shader:

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public Material material;
    public Mesh mesh;    void Update()
    {
        RenderParams rp = new RenderParams(material);
        rp.worldBounds = new Bounds(Vector3.zero, 10000*Vector3.one); // use tighter bounds
        rp.matProps = new MaterialPropertyBlock();
        rp.matProps.SetMatrix("_ObjectToWorld", Matrix4x4.Translate(new Vector3(-4.5f, 0, 0)));
        rp.matProps.SetFloat("_NumInstances", 10.0f);
        Graphics.RenderMeshPrimitives(rp, mesh, 0, 10);
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
            };            uniform float4x4 _ObjectToWorld;
            uniform float _NumInstances;            v2f vert(appdata_base v, uint instanceID : SV_InstanceID)
            {
                v2f o;
                float4 wpos = mul(_ObjectToWorld, v.vertex + float4(instanceID, 0, 0, 0));
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
