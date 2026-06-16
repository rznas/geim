<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.CapsuleBoundsHandle.OnHandleChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The handle that was dragged. |
| boundsOnClick | The raw Bounds for this instance's volume at the time the control handle was clicked. |
| newBounds | The raw Bounds for this instance's volume based on the updated handle position. |

### Returns

**Bounds** The bounds that should be applied to this instance, with any necessary modifications applied.

### Description

A callback for when a control handle was dragged in the Scene.

This method ensures that the radius axes scale uniformly and that the height and radius parameters cannot fall outside their acceptable ranges relative to one another.
 
 The height control handles cannot be made smaller than the diameter. Enlarging the diameter handles automatically increases the height if needed. The height value at the time the control was clicked is preferred until the user releases the control handle.
