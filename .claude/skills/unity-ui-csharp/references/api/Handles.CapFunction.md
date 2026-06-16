<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.CapFunction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| controlID | The control ID for the handle. |
| position | The position of the handle in the space of Handles.matrix. |
| rotation | The rotation of the handle in the space of Handles.matrix. |
| size | The size of the handle in world-space units. |
| eventType | Event type for the handle to act upon. By design it handles EventType.Layout and EventType.Repaint events. |

### Description

The function to use for drawing the handle e.g. Handles.RectangleCap.

Custom CapFunction has two responsibilities:

1. For EventType.Layout event, call HandleUtility.AddControl to inform Unity about the distance of the handle from mouse position.
2. For EventType.Repaint event, render the actual handle.
