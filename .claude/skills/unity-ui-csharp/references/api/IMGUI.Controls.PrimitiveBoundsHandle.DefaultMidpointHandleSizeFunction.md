<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.PrimitiveBoundsHandle.DefaultMidpointHandleSizeFunction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The current position of the handle in the space of Handles.matrix. |

### Returns

**float** The size to use for a handle at the specified position.

### Description

A SizeFunction that returns a fixed screen-space size.

This method is the default value assigned to midpointHandleSizeFunction for new PrimitiveBoundsHandle instances, and is not intended to be called on its own.
