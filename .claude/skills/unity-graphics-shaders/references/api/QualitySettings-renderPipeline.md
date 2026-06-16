<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings-renderPipeline.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The RenderPipelineAsset that defines the override render pipeline for the current quality level.

This is the override render pipeline for the current quality level. If this value is `null`, no override value exists for the current quality level.

Unity uses this value and the default render pipeline defined in GraphicsSettings.renderPipeline to determine the active render pipeline for the current quality level. For more information, see GraphicsSettings.currentRenderPipeline.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class ActiveRenderPipelineExample : MonoBehaviour
{
    // In the Inspector, assign a Render Pipeline Asset to each of these fields
    public RenderPipelineAsset defaultRenderPipelineAsset;
    public RenderPipelineAsset overrideRenderPipelineAsset;    void Start()
    {
        GraphicsSettings.defaultRenderPipeline = defaultRenderPipelineAsset;
        QualitySettings.renderPipeline = overrideRenderPipelineAsset;        DisplayCurrentRenderPipeline();
    }    void Update()
    {
        // When the user presses the left shift key, switch the default render pipeline
        if (Input.GetKeyDown(KeyCode.LeftShift))
        {
            SwitchDefaultRenderPipeline();
            DisplayCurrentRenderPipeline();
        }
        // When the user presses the right shift key, switch the override render pipeline
        else if (Input.GetKeyDown(KeyCode.RightShift))
        {
            SwitchOverrideRenderPipeline();
            DisplayCurrentRenderPipeline();
        }
    }    // Switch the default render pipeline between null,
    // and the render pipeline defined in defaultRenderPipelineAsset
    void SwitchDefaultRenderPipeline()
    {
        if (GraphicsSettings.defaultRenderPipeline == defaultRenderPipelineAsset)
        {
            GraphicsSettings.defaultRenderPipeline = null;
        }
        else
        {
            GraphicsSettings.defaultRenderPipeline = defaultRenderPipelineAsset;
        }
    }    // Switch the override render pipeline between null,
    // and the render pipeline defined in overrideRenderPipelineAsset
    void SwitchOverrideRenderPipeline()
    {
        if (QualitySettings.renderPipeline == overrideRenderPipelineAsset)
        {
            QualitySettings.renderPipeline = null;
        }
        else
        {
            QualitySettings.renderPipeline = overrideRenderPipelineAsset;
        }
    }    // Print the current render pipeline information to the console
    void DisplayCurrentRenderPipeline()
    {
        // GraphicsSettings.defaultRenderPipeline determines the default render pipeline
        // If it is null, the default is the Built-in Render Pipeline
        if (GraphicsSettings.defaultRenderPipeline != null)
        {
            Debug.Log("The default render pipeline is defined by " + GraphicsSettings.defaultRenderPipeline.name);
        }
        else
        {
            Debug.Log("The default render pipeline is the Built-in Render Pipeline");
        }        // QualitySettings.renderPipeline determines the override render pipeline for the current quality level
        // If it is null, no override exists for the current quality level
        if (QualitySettings.renderPipeline != null)
        {
            Debug.Log("The override render pipeline for the current quality level is defined by " + QualitySettings.renderPipeline.name);
        }
        else
        {
            Debug.Log("No override render pipeline exists for the current quality level");
        }        // If an override render pipeline is defined, Unity uses that
        // Otherwise, it falls back to the default value
        if (QualitySettings.renderPipeline != null)
        {
            Debug.Log("The active render pipeline is the override render pipeline");
        }
        else
        {
            Debug.Log("The active render pipeline is the default render pipeline");
        }        // To get a reference to the Render Pipeline Asset that defines the active render pipeline,
        // without knowing if it is the default or an override, use GraphicsSettings.currentRenderPipeline
        if (GraphicsSettings.currentRenderPipeline != null)
        {
            Debug.Log("The active render pipeline is defined by " + GraphicsSettings.currentRenderPipeline.name);
        }
        else
        {
            Debug.Log("The active render pipeline is the Built-in Render Pipeline");
        }
    }
}
```

Additional resources: How to get, set, and configure the active render pipeline, GraphicsSettings.currentRenderPipeline GraphicsSettings.defaultRenderPipeline, QualitySettings.GetRenderPipelineAssetAt], GraphicsSettings.allConfiguredRenderPipelines.
