<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.DrawMeshInstancedIndirect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mesh | The Mesh to draw using instancing. |
| submeshIndex | Which submesh of the mesh to draw. This only applies to meshes that are composed of several submeshes. |
| material | The Material to use when drawing the mesh. |
| shaderPass | Which pass of the shader to use, or -1 which renders all passes. |
| properties | Additional Material properties to apply onto the Material just before this Mesh is drawn. See MaterialPropertyBlock. |
| bufferWithArgs | A GPU buffer that provides rendering command arguments (See IndirectDrawIndexedArgs). |
| argsOffset | The offset into the buffer in bytes, where the draw arguments start. |

### Description

Add a "draw mesh with indirect instancing" command.

This function renders multiple instances of the same Mesh, similar to Graphics.DrawMeshInstanced, but takes the rendering command arguments from `bufferWithArgs`. You can set up these command arguments with either the CPU or the GPU.

Use IndirectDrawIndexedArgs to set up the graphics buffer (instead of plain ints) as the layout of this structure can change depending on the platform. The `argsWithBuffer` should contain a single IndirectDrawIndexedArgs struct at the `argsOffset`. 

This function only works on platforms that support compute shaders.

Additional resources: Graphics.RenderMesh, Graphics.RenderMeshIndirect, MaterialPropertyBlock.

The example script below will render a specified mesh 10 times using `DrawMeshInstancedIndirect` when attached to a camera.

```csharp
using UnityEngine;
using UnityEngine.Rendering;[RequireComponent(typeof(Camera))]
public class ExampleClass : MonoBehaviour
{
    public Material material;
    public Mesh mesh;    private GraphicsBuffer bufferWithArgs;
    private GraphicsBuffer.IndirectDrawIndexedArgs[] bufferWithArgsData;
    private CommandBuffer cmd;    void Start()
    {
        // Initialize the GPU-side argument buffer, as well as a CPU-side array to populate it.
        bufferWithArgs = new GraphicsBuffer(GraphicsBuffer.Target.IndirectArguments, 1, GraphicsBuffer.IndirectDrawIndexedArgs.size);
        bufferWithArgsData = new GraphicsBuffer.IndirectDrawIndexedArgs[1];        // Create a material property block with an additional property that's fed to the shader.
        var matProps = new MaterialPropertyBlock();
        matProps.SetMatrix("_ObjectToWorld", Matrix4x4.Translate(new Vector3(-4.5f, 0, 0)));        // Populate the GPU-side argument buffer with draw command arguments.
        // This command will render 10 instances of the specified mesh.
        bufferWithArgsData[0] = new GraphicsBuffer.IndirectDrawIndexedArgs
        {
            indexCountPerInstance = mesh.GetIndexCount(0),
            instanceCount = 10,
            baseVertexIndex = 0,
            startIndex = 0,
            startInstance = 0,
        };
        bufferWithArgs.SetData(bufferWithArgsData);        // Record the indirect draw command onto a command buffer, and add it to the camera.
        // The command buffer is executed whenever the camera renders.
        cmd = new CommandBuffer();
        cmd.DrawMeshInstancedIndirect(mesh, 0, material, 0, bufferWithArgs, 0, matProps);        GetComponent<Camera>().AddCommandBuffer(CameraEvent.AfterForwardOpaque, cmd);
    }    void OnDestroy()
    {
        bufferWithArgs?.Release();
        cmd?.Dispose();
    }
}
```

Use the example script with a material that uses the following shader:

```csharp
Shader "ExampleShader"
{
    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag            struct v2f
            {
                float4 pos : SV_POSITION;
                float4 color : COLOR;
            };            float4x4 _ObjectToWorld;            v2f vert(float4 vertex : POSITION, uint instanceID : SV_InstanceID)
            {
                v2f o;
                        
                // Base the position of each instance on the instance ID,
                // so all the instances don't just render at the same position.
                float4 wpos = mul(_ObjectToWorld, vertex + float4(instanceID, 0, 0, 0));
                o.pos = mul(UNITY_MATRIX_VP, wpos);                // Base the color of each instance on the instance ID as well.
                // Instances will alternate between black and white color.
                o.color = instanceID & 1;
                
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
