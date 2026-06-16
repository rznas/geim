<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.ExecuteCommandBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| commandBuffer | Specifies the Command Buffer to execute. |

### Description

Schedules the execution of a custom graphics Command Buffer.

During the call to ScriptableRenderContext.ExecuteCommandBuffer, ScriptableRenderContext registers the commandBuffer parameter into its own internal list of commands to execute. The actual execution of these commands (including the commands stored in the custom commandBuffer) happens during ScriptableRenderContext.Submit.

Make sure that you call ExecuteCommandBuffer before other ScriptableRenderContext methods (such as DrawRenderers, DrawShadows) if your draw calls depend on a state of the pipeline that you specify in a CommandBuffer. The code sample below illustrates a case when commands are submitted in an incorrect order ; followed by a case that behaves as expected:

```csharp
using UnityEngine;
using UnityEngine.Rendering;internal class ExecuteCommandBufferExample
{
    // TODO: replace with actual settings
    ScriptableRenderContext scriptableRenderContext;
    DrawingSettings drawingSettings;
    CullingResults cullingResults = new CullingResults();
    FilteringSettings filteringSettings = new FilteringSettings();    Matrix4x4 myViewMatrix = Matrix4x4.Scale(new Vector3(2f, 2f, 2f));    public void DrawRenderersExampleIncorrect()
    {
        CommandBuffer myCommandBuffer = new CommandBuffer();        myCommandBuffer.SetViewMatrix(myViewMatrix);        scriptableRenderContext.DrawRenderers(cullingResults, ref drawingSettings, ref filteringSettings);
        // NO! When scriptableRenderContext submits the DrawRenderers command, it will not know about myViewMatrix :(        scriptableRenderContext.ExecuteCommandBuffer(myCommandBuffer);
        myCommandBuffer.Clear();
    }    public void DrawRenderersExampleBetter()
    {
        CommandBuffer myCommandBuffer = new CommandBuffer();        myCommandBuffer.SetViewMatrix(myViewMatrix);        scriptableRenderContext.ExecuteCommandBuffer(myCommandBuffer);
        myCommandBuffer.Clear();        scriptableRenderContext.DrawRenderers(cullingResults, ref drawingSettings, ref filteringSettings);
        // OK! During next scriptableRenderContext.Submit() call, scriptableRenderContext will set myViewMatrix *before* drawing the renderers.
    }
}
```

Additional resources: CommandBuffer.
