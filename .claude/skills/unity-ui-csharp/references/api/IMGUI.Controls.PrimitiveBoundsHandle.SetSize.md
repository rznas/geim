<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.PrimitiveBoundsHandle.SetSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| size | A Vector3 specifying how large the bounding volume is along all of its axes. |

### Description

Sets the current size of the bounding volume for this instance.

A negative value along any axis of the specified Vector3 will automatically be converted into a positive value. Disabled axes will automatically be converted to `0`.
 
 Additional resources: axes.
