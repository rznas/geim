<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipelineManager-beginContextRendering.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Delegate that you can use to invoke custom code at the start of RenderPipeline.Render.

When Unity calls RenderPipeline.BeginContextRendering at the start of RenderPipeline.Render, it executes the methods in this delegate's invocation list.

In the Universal Render Pipeline (URP) and the High Definition Render Pipeline (HDRP), Unity calls RenderPipeline.BeginContextRendering automatically. If you are writing a custom Scriptable Render Pipeline, you must call the method yourself. This functionality is not compatible with the Built-in Render Pipeline.

This delegate works in the same way as RenderPipelineManager.beginFrameRendering, except that this version does not cause heap allocations.

The following code example demonstrates how to add a method to this delegate's invocation list, and later remove it.

```csharp
using UnityEngine;
using UnityEngine.Rendering;
using System.Collections.Generic;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        RenderPipelineManager.beginContextRendering += OnBeginContextRendering;
    }    void OnBeginContextRendering(ScriptableRenderContext context, List<Camera> cameras)
    {
        // Put the code that you want to execute at the start of RenderPipeline.Render here
    }    void OnDestroy()
    {
        RenderPipelineManager.beginContextRendering -= OnBeginContextRendering;
    }
}
```

Additional resources: RenderPipeline.BeginContextRendering, RenderPipelineManager.endContextRendering, Unity Manual: Scriptable Render Pipeline
