<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetInvertCulling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| invertCulling | A boolean indicating whether to invert the backface culling (true) or not (false). |

### Description

Add a "set invert culling" command to the buffer.

When the command buffer is executed, the backface culling is either inverted (when invertCulling is set to true) or not (when invertCulling is set to false) (see GL.invertCulling).
