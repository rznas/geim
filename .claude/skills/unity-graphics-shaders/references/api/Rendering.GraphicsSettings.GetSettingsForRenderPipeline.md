<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsSettings.GetSettingsForRenderPipeline.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderPipelineType | The type of RenderPipeline. |

### Returns

**RenderPipelineGlobalSettings** RenderPipelineGlobalSettings asset that is registered for the given pipeline.

### Description

Get the registered RenderPipelineGlobalSettings for the given RenderPipeline.

This method iterates over all RenderPipelineGlobalSettings registered in the GraphicsSettings. If there is an instance registered for the given RenderPipeline, the method returns it, otherwise the method returns null. The function performs string comparison and may allocate memory. To improve runtime performance, cache the result of the function call.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class ExampleRenderPipelineAsset : RenderPipelineAsset
{
    protected override RenderPipeline CreatePipeline()
    {
        return new ExampleRenderPipeline();
    }
}public class ExampleRenderPipeline : RenderPipeline
{
    public ExampleRenderPipeline()
    {
        var mySettings = ExampleRPGlobalSettings.Create();
        ExampleRPGlobalSettings.RegisterToGraphicsSettings(mySettings);
    }    protected override void Render(ScriptableRenderContext renderContext, Camera[] cameras)
    {
        // Do something
    }    public virtual RenderPipelineGlobalSettings globalSettings
    {
        get { return ExampleRPGlobalSettings.instance; }
    }    protected virtual void Dispose(bool disposing)
    {
        ExampleRPGlobalSettings.UnregisterToGraphicsSettings();
    }
}public class ExampleRPGlobalSettings : RenderPipelineGlobalSettings
{
    private static ExampleRPGlobalSettings cachedInstance = null;
    public static ExampleRPGlobalSettings instance
    {
        get
        {
            if (cachedInstance == null)
                cachedInstance = GraphicsSettings.GetSettingsForRenderPipeline<ExampleRenderPipeline>() as ExampleRPGlobalSettings;
            return cachedInstance;
        }
    }    public static void RegisterToGraphicsSettings(ExampleRPGlobalSettings newSettings)
    {
        GraphicsSettings.RegisterRenderPipelineSettings<ExampleRenderPipeline>(newSettings as RenderPipelineGlobalSettings);
        cachedInstance = null;
    }    public static void UnregisterToGraphicsSettings()
    {
        GraphicsSettings.UnregisterRenderPipelineSettings<ExampleRenderPipeline>();
        cachedInstance = null;
    }    static public ExampleRPGlobalSettings Create()
    {
        ExampleRPGlobalSettings assetCreated = ScriptableObject.CreateInstance<ExampleRPGlobalSettings>();
        return assetCreated;
    }
}
```
