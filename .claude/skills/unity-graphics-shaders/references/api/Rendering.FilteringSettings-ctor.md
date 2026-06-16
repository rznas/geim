<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.FilteringSettings-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderQueueRange | A RenderQueueRange struct that sets the value of renderQueueRange. Unity renders objects whose Material.renderQueue value is within the given range. The default value is `RenderQueueRange.all`. |
| layerMask | A bit mask that sets the value of layerMask. Unity renders objects whose GameObject.layer value is enabled in this bit mask. The default value is `-1`. |
| renderingLayerMask | A bit mask that sets the value of renderingLayerMask. Unity renders objects whose Renderer.renderingLayerMask value is enabled in this bit mask. The default value is `uint.MaxValue`. |
| excludeMotionVectorObjects | An int that sets the value of excludeMotionVectorObjects. When this is `1`, Unity excludes objects that have a motion pass enabled, or have changed position since the last frame. The default value is `0`. |

### Description

Creates a `FilteringSettings` struct for use with ScriptableRenderContext.DrawRenderers.

**Note:** If you call `new FilteringSettings()` without any parameters, Unity creates an empty `FilteringSettings` struct. An empty struct contains no data and all internal values default to 0; for example, it has a `layerMask` value of 0, and so on. Unless you overwrite its properties, this empty struct tells Unity to exclude all objects.

If you call this constructor with one or more parameters, Unity sets any unspecified values to the default. The default value for each property performs no filtering. To create a `FilteringSettings` struct with all default values, use FilteringSettings.defaultValue.

This example demonstrates the syntax for creating a `FilteringSettings` struct with some non-default values.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class FilteringSettingsExample
{
    public FilteringSettings CreateFilteringSettings()
    {
        // Instantiate a RenderQueueRange struct that represents the RenderQueue values you want to render
        // In this example, render materials whose RenderQueue value is in the opaque range
        var desiredRenderQueueRange = RenderQueueRange.opaque;        // Create a bit mask that represents the layers you want to render
        // In this example, only render objects on layer 0 (the "Default" layer)
        int layerIndex = 0;
        int layerMask = 1 << layerIndex;        // Instantiate a FilteringSettings struct with the desired values
        // Unity sets any unspecified values to the same as FilteringSettings.default
        FilteringSettings filteringSettings = new FilteringSettings(desiredRenderQueueRange, layerMask);        return filteringSettings;
    }
}
```

Additional resources: ScriptableRenderContext.DrawRenderers, Creating a simple render loop in a custom render pipeline.
