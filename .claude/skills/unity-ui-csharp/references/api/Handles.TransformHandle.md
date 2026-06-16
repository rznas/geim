<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.TransformHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Position of the handle. |
| rotation | The orientation of the handle in 3D space. |
| scale | Scale value to modify. |
| uniformScale | Uniform scale value to modify. |

### Description

Creates a transform handle.

This handle behaves like the built-in transform tool in Unity, with the option to display all scale handles, only the non-uniform scale handle, or no scale handles. Different signature variants will only display controls handles for arguments that have the ref modifier, allowing you to opt in to only those control handles you require.
