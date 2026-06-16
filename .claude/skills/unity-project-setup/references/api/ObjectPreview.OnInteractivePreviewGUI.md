<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectPreview.OnInteractivePreviewGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| r | Rectangle in which to draw the preview. |
| background | Background image. |

### Description

Implement to create your own interactive custom preview. Interactive custom previews are used in the preview area of the inspector and the object selector.

Implement this instead of OnPreviewGUI if you only want to display interactive custom previews (you can implement both if some previews are interactive and others aren't). The overidden method should use the rectangle passed in and render a preview of the asset into it. The default implementation is a no-op.
