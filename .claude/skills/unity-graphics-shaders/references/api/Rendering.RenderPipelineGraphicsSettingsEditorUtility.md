<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipelineGraphicsSettingsEditorUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Helper class that contains a utility function on IRenderPipelineGraphicsSettings for Editor.

### Static Methods

| Method | Description |
| --- | --- |
| ForEachFieldOfType | Iterate on each fields of the IRenderPipelineGraphicsSettings of type T and perform the given callback on them. |
| Rebind | Update a IRenderPipelineGraphicsSettings. This will update the ProjectSettings > Graphics data if opened without reconstructing the window (rebinding the data). |
| RecreateRenderPipelineMatchingSettings | Force the current render pipeline to be reconstructed if the given settings is used by it. |
| RemoveRenderPipelineGraphicsSettingsWithMissingScript | Call this method to remove null settings from all RenderPipelineGlobalSettings that assigned in the GraphicsSettings. |
