<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RendererUtils.RendererListDesc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A high-level struct holding the arguments needed to create a RendererList.

To create a RendererList object, fill this struct and pass it to ScriptableRenderContext.CreateRendererList. 

Alternatively, if you use the render graph system, pass this struct to RenderGraph.CreateRendererList. For more information about RenderGraph, refer to The render graph system .

In terms of usage, this struct is similar to RendererListParams, only higher level. If you need access to advanced properties such as FilteringSettings.sortingLayerRange, use RendererListParams instead.

This struct can be converted to RendererListParams using RendererListDesc.ConvertToParameters.

The example illustrates how `RendererListDesc` can be used. Follow these steps:

1. Save the example code in your project as `SimpleRenderPipelineAsset.cs`.
2. Use the `RenderPipeline/Create SimpleRenderPipelineAsset` menu item to create the render pipeline asset.
3. Go to Project Settings > Graphics, and assign the created asset as the **Default Render Pipeline Asset**.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.RendererUtils;public class SimpleRenderPipelineAsset : RenderPipelineAsset<SimpleRenderPipeline>
{
#if UNITY_EDITOR
    [UnityEditor.MenuItem("RenderPipeline/Create SimpleRenderPipelineAsset")]
    static void CreateSimpleRenderLoop()
    {
        var instance = CreateInstance<SimpleRenderPipelineAsset>();
        UnityEditor.AssetDatabase.CreateAsset(instance, "Assets/SimpleRenderPipeline.asset");
    }
#endif    protected override RenderPipeline CreatePipeline() => new SimpleRenderPipeline();
}public class SimpleRenderPipeline : RenderPipeline
{
    protected override void Render(ScriptableRenderContext context, List<Camera> cameras)
    {
        foreach (var camera in cameras)
        {
            if (!camera.TryGetCullingParameters(out var cullingParams))
                continue;
            
            CullingResults cullingResults = context.Cull(ref cullingParams);
            context.SetupCameraProperties(camera);            var cmd = new CommandBuffer();
            cmd.ClearRenderTarget(true, true, Color.red);
            
            // Draws visible MeshRenderers that use the built-in Default-Material/Default-Diffuse material.
            var rendererListDesc = new RendererListDesc(new ShaderTagId("ForwardBase"), cullingResults, camera)
            {
                renderQueueRange = RenderQueueRange.opaque
            };
            var rendererList = context.CreateRendererList(rendererListDesc);            
            cmd.DrawRendererList(rendererList);            context.ExecuteCommandBuffer(cmd);
            cmd.Release();
            context.Submit();
        }
    }
}
```

Additional resources: RendererList, ScriptableRenderContext.CreateRendererList.

### Properties

| Property | Description |
| --- | --- |
| batchLayerMask | The batch layer mask to use for filtering this RendererList. |
| excludeObjectMotionVectors | Indicates whether to exclude dynamic GameObjects from the RendererList. |
| layerMask | The layer mask to use for filtering this RendererList. |
| overrideMaterial | The material to render the RendererList's GameObjects with. This overrides the material for each GameObject. |
| overrideMaterialPassIndex | Pass index for the override material. |
| overrideShader | The shader to render the RendererList's GameObjects with. This overrides the shader for each GameObject. Override shaders do not override existing material properties. |
| overrideShaderPassIndex | Selects which pass of the override shader to use. |
| rendererConfiguration | The renderer configuration for the RendererList. For more information, see PerObjectData. |
| renderingLayerMask | The rendering layer mask to use for filtering this RendererList. |
| renderQueueRange | The material render queue range to use for the RendererList. For more information, see RenderQueueRange. |
| sortingCriteria | The method Unity uses to sort the GameObjects in the RendererList. For more information, see SortingCriteria. |
| stateBlock | An optional set of values to override the RendererLists render state. For more information, see RenderStateBlock. |

### Constructors

| Constructor | Description |
| --- | --- |
| RendererListDesc | Initializes and returns an instance of RendererListDesc. |

### Public Methods

| Method | Description |
| --- | --- |
| IsValid | Checks whether the RendererListDesc is valid. |

### Static Methods

| Method | Description |
| --- | --- |
| ConvertToParameters | Convert a given RendererListDesc to a RendererListParams struct with equivalent parameters. |
