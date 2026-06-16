<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RendererListParams.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A low-level struct holding the arguments needed to create a RendererList.

To create a RendererList object, fill this struct and pass it to ScriptableRenderContext.CreateRendererList. 

Alternatively, if you use the render graph system, pass this struct to RenderGraph.CreateRendererList. For more information about RenderGraph, refer to The render graph system .

In terms of usage, this struct is similar to RendererListDesc, only lower level and more closely tied to engine internals. Use this struct instead of RendererListDesc if you need access to advanced properties such as FilteringSettings.sortingLayerRange.

The example illustrates how `RendererListParams` can be used. Follow these steps:

1. Save the example code in your project as `SimpleRenderPipelineAsset.cs`.
2. Use the `RenderPipeline/Create SimpleRenderPipelineAsset` menu item to create the render pipeline asset.
3. Go to Project Settings > Graphics, and assign the created asset as the **Default Render Pipeline Asset**.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;public class SimpleRenderPipelineAsset : RenderPipelineAsset<SimpleRenderPipeline>
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
            DrawingSettings drawingSettings = new DrawingSettings(new ShaderTagId("ForwardBase"), new SortingSettings(camera));
            FilteringSettings filteringSettings = new FilteringSettings(RenderQueueRange.opaque);
            var rendererListParams = new RendererListParams(cullingResults, drawingSettings, filteringSettings);
            var rendererList = context.CreateRendererList(ref rendererListParams);
            
            cmd.DrawRendererList(rendererList);
            context.ExecuteCommandBuffer(cmd);
            cmd.Release();
            context.Submit();
        }
    }
}
```

Additional resources: RendererList, ScriptableRenderContext.CreateRendererList.

### Static Properties

| Property | Description |
| --- | --- |
| Invalid | Returns an empty RendererListParams. |

### Properties

| Property | Description |
| --- | --- |
| cullingResults | The set of visible objects to draw. You typically obtain this from ScriptableRenderContext.Cull. |
| drawSettings | A struct that describes how to draw the objects. |
| filteringSettings | A struct that describes how to filter the set of visible objects, so that Unity only draws a subset. |
| isPassTagName | If set to true, tagName specifies a Pass Tag. Otherwise, tagName specifies a SubShader Tag. |
| stateBlocks | An array of structs that describe which parts of the GPU's render state to override. |
| tagName | The name of a SubShader Tag or Pass Tag. |
| tagValues | An array of ShaderTagId structs, where the name is the value of a given SubShader Tag or Pass Tag. |

### Constructors

| Constructor | Description |
| --- | --- |
| RendererListParams | Create a RendererListParams struct. |
