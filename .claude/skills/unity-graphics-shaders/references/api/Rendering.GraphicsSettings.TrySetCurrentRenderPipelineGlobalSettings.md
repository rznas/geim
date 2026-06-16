<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsSettings.TrySetCurrentRenderPipelineGlobalSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| asset | The RenderPipelineGlobalSettings asset to activate for the project. |

### Returns

**bool** Returns `true` if the asset was not null and Unity successfully applied the settings.

### Description

Attempts to set the active RenderPipelineGlobalSettings at runtime.

This method lets you assign the `RenderPipelineGlobalSettings` asset at runtime. Use this method when you need to activate a RenderPipelineAsset but its corresponding RenderPipelineGlobalSettings wasn't active when the project was built. This can occur if the project was built with no Scriptable Render Pipeline active, or if it was built with settings for a different pipeline.

For example, if you load a Universal Render Pipeline (URP) `RenderPipelineAsset` and its `RenderPipelineGlobalSettings` from an AssetBundle at runtime, you must first call this method to activate the URP global settings. You must do this before assigning the URP asset to QualitySettings.renderPipeline. Attempting to assign the asset without its compatible global settings active will result in an `InvalidOperationException`.

**Note**: This method only works at runtime. You can't use it in the Unity Editor. Calling it from the Editor results in an error log message and the method immediately returns false.

At build time, Unity inspects the `RenderPipelineGlobalSettings` and `RenderPipelineAsset` assigned in Quality settings to ensure the right resources are built. If you use this API, you must also ensure that the right resources are built.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class RuntimePipelineActivator : MonoBehaviour
{
    // In a real scenario, Render Pipeline Global Settings and Render Pipeline Asset would likely be loaded from an AssetBundle.
    // For this example, assign them in the Inspector manually.
    public RenderPipelineGlobalSettings newGlobalSettings;
    public RenderPipelineAsset newPipelineAsset;    void Start()
    {
        if (newGlobalSettings == null || newPipelineAsset == null)
        {
            Debug.LogError("The new Render Pipeline Global Settings or Render Pipeline Asset has not been assigned.");
            return;
        }        // To activate a dynamically loaded pipeline, you must first set its corresponding global settings.
        // This call will fail if run in the Editor.
        bool settingsSet = GraphicsSettings.TrySetCurrentRenderPipelineGlobalSettings(newGlobalSettings);        if (settingsSet)
        {
            Debug.Log("Successfully applied new Render Pipeline Global Settings.");            // Now that the correct global settings are active, it is safe to assign
            // the new render pipeline asset.
            QualitySettings.renderPipeline = newPipelineAsset;
            Debug.Log($"Activated Render Pipeline: {QualitySettings.renderPipeline.name}");
        }
        else
        {
            Debug.LogError("Failed to set Render Pipeline Global Settings. This may be because you are running in the Editor, or the asset was null.");
        }
    }
}
```

Additional resources: QualitySettings.
