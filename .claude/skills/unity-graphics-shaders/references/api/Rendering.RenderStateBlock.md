<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderStateBlock.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A set of values that Unity uses to override the GPU's render state.

When you call ScriptableRenderContext.DrawRenderers, you can use this to override the render state for some or all of the geometry.

**Note:** You must set mask to tell Unity which parts of the render state to override to apply. For example, to apply the values in blendState, mask must include RenderStateMask.Blend.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class OverrideRenderStateExample
{
    ScriptableRenderContext scriptableRenderContext;    // Placeholder data
    DrawingSettings exampleDrawingSettings;
    CullingResults exampleCullingResults = new CullingResults();
    FilteringSettings exampleFilteringSettings = new FilteringSettings();    public void OverrideRenderState()
    {
        // Tell Unity how to override the render state when it draws the geometry.
        var stateBlock = new RenderStateBlock(RenderStateMask.Depth);
        stateBlock.depthState = new DepthState(true, CompareFunction.LessEqual);        // Schedule the drawing operation.
        scriptableRenderContext.DrawRenderers(exampleCullingResults, ref exampleDrawingSettings, ref exampleFilteringSettings, ref stateBlock);        // Perform all scheduled tasks, in the order that they were scheduled.
        scriptableRenderContext.Submit();
    }
}
```

Additional resources: ScriptableRenderContext.DrawRenderers, RenderStateMask.

### Properties

| Property | Description |
| --- | --- |
| blendState | Specifies the new blend state. |
| depthState | Specifies the new depth state. |
| mask | Specifies which parts of the GPU's render state to override. |
| rasterState | Specifies the new raster state. |
| stencilReference | The value to be compared against and/or the value to be written to the buffer, based on the stencil state. |
| stencilState | Specifies the new stencil state. |

### Constructors

| Constructor | Description |
| --- | --- |
| RenderStateBlock | Creates a new render state block with the specified mask. |
