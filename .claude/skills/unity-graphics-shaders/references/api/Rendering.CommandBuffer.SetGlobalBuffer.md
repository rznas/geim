<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetGlobalBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| name | The name of the property. |
| value | The buffer to set. |

### Description

Add a "set global shader buffer property" command.

When the command buffer will be executed, a global shader buffer property will be set at this point. The effect is as if Shader.SetGlobalBuffer was called.
