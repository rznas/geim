<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.ArcHandle.DefaultAngleHandleDrawFunction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| controlID | The control ID for the handle. |
| position | The position of the handle in the space of Handles.matrix. |
| rotation | The rotation of the handle in the space of Handles.matrix. |
| size | The size of the handle in the space of Handles.matrix. Use HandleUtility.GetHandleSize if you want a constant screen-space size. |
| eventType | Event type for the handle to act upon. By design it handles EventType.Layout and EventType.Repaint events. |

### Description

A CapFunction that draws a line terminated with Handles.CylinderHandleCap.

This method is the default value assigned to angleHandleDrawFunction for new ArcHandle instances, and is not intended to be called on its own.
