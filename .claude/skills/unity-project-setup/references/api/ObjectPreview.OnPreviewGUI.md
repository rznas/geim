<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectPreview.OnPreviewGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| r | Rectangle in which to draw the preview. |
| background | Background image. |

### Description

Implement to create your own custom preview for the preview area of the inspector, primary editor headers and the object selector.

If you implement OnInteractivePreviewGUI then this will only be called for non-interactive custom previews. The overidden method should use the rectangle passed in and render a preview of the asset into it. The default implementation is a no-op.

Additional resources: OnInteractivePreviewGUI.
