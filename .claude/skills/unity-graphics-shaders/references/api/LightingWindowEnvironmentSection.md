<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightingWindowEnvironmentSection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class for the Inspector that overrides the Environment section of the Lighting window.

See also SupportedOnRenderPipelineAttribute.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.Rendering;[SupportedOnRenderPipeline(typeof(CustomSRPAsset))]
class CustomEnvironmentSection : LightingWindowEnvironmentSection
{
    public override void OnInspectorGUI()
    {
        // The following will be displayed instead of the Environment section in the LightingWindow
        EditorGUILayout.LabelField("My Custom Environment Section !!");
    }
}
//Below is a custom empty render pipeline only here for explaining the filtering in ScriptableRenderPipelineExtensionclass CustomSRP : RenderPipeline
{
    protected override void Render(ScriptableRenderContext context, Camera[] cameras)
    { /* My custom rendering algorithm */ }
}class CustomSRPAsset : RenderPipelineAsset
{
    protected override RenderPipeline CreatePipeline()
    {
        return new CustomSRP();
    }
}
```

In this example, the Environment section of the Lighting window is overridden when the CustomSRP is in use.

### Public Methods

| Method | Description |
| --- | --- |
| OnDisable | OnDisable is called when this Inspector override is not used anymore. |
| OnEnable | OnEnable is called when this Inspector override is used. |
| OnInspectorGUI | A callback that is called when drawing the Environment section in the Lighting window. |
