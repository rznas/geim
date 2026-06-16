<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.RenderMeshIndirect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rparams | The parameters Unity uses to render the mesh. |
| mesh | The Mesh to render. |
| argsBuffer | A graphics buffer that provides rendering command arguments (see IndirectDrawIndexedArgs). |
| commandCount | The number of rendering commands to execute in the `argsBuffer`. |
| startCommand | The first command to execute in the `argsBuffer`. |

### Description

Renders multiple instances of a mesh using GPU instancing and rendering command arguments from `argsBuffer`.

This function renders multiple instances of the same mesh, similar to Graphics.RenderMeshInstanced, but takes the rendering command arguments from `argsBuffer`. You can set up these command arguments with either the CPU or the GPU. The `argsBuffer` can contain multiple rendering commands that you can execute with a single call to this method. Use IndirectDrawIndexedArgs to set up the graphics buffer (instead of plain ints) as the layout of this structure can change depending on the platform.

This function only works on platforms that support compute shaders.

Use this function to draw the same Mesh multiple times using a custom shader and GPU-controlled rendering arguments. Use `RenderParams.worldBounds` to define bounds to cull and sort the geometry rendered with the method as a single entity.

Add the following lines in the pass section of a shader to access command, instance and vertex ID's as specified in UnityIndirect.cginc:

```csharp
#define UNITY_INDIRECT_DRAW_ARGS IndirectDrawIndexedArgs
#include "UnityIndirect.cginc"
```

Add the following line to the beginning of the shader function to setup the ID access functions:

```csharp
InitIndirectDrawArgs(0);
```

Additional resources: RenderMeshInstanced.

The following example executes two indirect rendering commands. Each command renders 10 Mesh instances. The associated Material must use the below custom shader:

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public Material material;
    public Mesh mesh;    GraphicsBuffer commandBuf;
    GraphicsBuffer.IndirectDrawIndexedArgs[] commandData;
    const int commandCount = 2;    void Start()
    {
        commandBuf = new GraphicsBuffer(GraphicsBuffer.Target.IndirectArguments, commandCount, GraphicsBuffer.IndirectDrawIndexedArgs.size);
        commandData = new GraphicsBuffer.IndirectDrawIndexedArgs[commandCount];
    }    void OnDestroy()
    {
        commandBuf?.Release();
        commandBuf = null;
    }    void Update()
    {
        RenderParams rp = new RenderParams(material);
        rp.worldBounds = new Bounds(Vector3.zero, 10000*Vector3.one); // use tighter bounds for better FOV culling
        rp.matProps = new MaterialPropertyBlock();
        rp.matProps.SetMatrix("_ObjectToWorld", Matrix4x4.Translate(new Vector3(-4.5f, 0, 0)));
        commandData[0].indexCountPerInstance = mesh.GetIndexCount(0);
        commandData[0].instanceCount = 10;
        commandData[1].indexCountPerInstance = mesh.GetIndexCount(0);
        commandData[1].instanceCount = 10;
        commandBuf.SetData(commandData);
        Graphics.RenderMeshIndirect(rp, mesh, commandBuf, commandCount);
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
            #define UNITY_INDIRECT_DRAW_ARGS IndirectDrawIndexedArgs
            #include "UnityIndirect.cginc"            struct v2f
            {
                float4 pos : SV_POSITION;
                float4 color : COLOR0;
            };            uniform float4x4 _ObjectToWorld;            v2f vert(appdata_base v, uint svInstanceID : SV_InstanceID)
            {
                InitIndirectDrawArgs(0);
                v2f o;
                uint cmdID = GetCommandID(0);
                uint instanceID = GetIndirectInstanceID(svInstanceID);
                float4 wpos = mul(_ObjectToWorld, v.vertex + float4(instanceID, cmdID, 0, 0));
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
