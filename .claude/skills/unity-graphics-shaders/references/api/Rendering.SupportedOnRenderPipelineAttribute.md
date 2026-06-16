<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SupportedOnRenderPipelineAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set which render pipelines make a class active.

Add `[SupportedOnRenderPipeline]` above a class to set which Render Pipeline Assets make a class active. For example, `[SupportedOnRenderPipeline(typeof(HDRenderPipelineAsset))`.

 `[SupportedOnRenderPipeline]` works only with some attributes - for example, CustomEditor. You can use `[SupportedOnRenderPipeline]` without an argument if you want all Scriptable Render Pipeline Assets to make the class active. The following example makes the `BehaviourEditor` class active when any Scriptable Render Pipeline asset is active.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.Rendering;[CustomEditor(typeof(Behaviour))]
[SupportedOnRenderPipeline]
public class BehaviourEditor : Editor
{
    public override void OnInspectorGUI()
    {
        EditorGUILayout.LabelField($"{nameof(BehaviourEditor)} is supported on the currently active render pipeline.");
    }
}public class Behaviour : MonoBehaviour
{
}
```

Additional resources: RenderPipelineAsset.

### Properties

| Property | Description |
| --- | --- |
| isSupportedOnCurrentPipeline | The value is true if the current RenderPipelineAsset supports the attribute. |
| renderPipelineTypes | The Render Pipeline Assets that support the attribute. |

### Public Methods

| Method | Description |
| --- | --- |
| GetSupportedMode | Use SupportedOnRenderPipelineAttribute.GetSupportedMode to find out whether a RenderPipelineAsset supports the attribute. |

### Static Methods

| Method | Description |
| --- | --- |
| IsTypeSupportedOnRenderPipeline | Use this method to determine whether a type has the SupportedOnRenderPipelineAttribute attribute and determine whether a RenderPipelineAsset type supports that attribute. |
