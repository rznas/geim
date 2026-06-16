<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipelineEditorUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Helper class that contains a utility function on ScriptableRenderPipeline for Editor.

### Static Properties

| Property | Description |
| --- | --- |
| onRenderingLayerCountChanged | An event triggered when the count of defined rendering layers changes. |

### Static Methods

| Method | Description |
| --- | --- |
| GetDerivedTypesSupportedOnCurrentPipeline | Returns the types that're children of T and have a SupportedOnRenderPipelineAttribute corresponding to the render pipeline you're using. Order of the return types is arbitrary. |
| GetPipelineTypeFromPipelineAssetType | Given a RenderPipelineAsset type, returns the corresponding RenderPipeline type. |
| TryAddRenderingLayerName | Add a new Layer to Rendering Layers in the Tags and Layers manager. |
| TryRemoveLastRenderingLayerName | Remove a last Layer to Rendering Layers in the Tags and Layers manager. The default Rendering Layer cannot be removed. |
| TrySetRenderingLayerName | Give a possibility to change a Rendering Layer name. |
