<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.IncrementUpdateCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| dest | Increments the updateCount for this Texture. |

### Description

Increments the updateCount property of a Texture.

This is useful if the execution of a command buffer mutates a Texture because you can rely on the Texture's updateCount to detect any changes.
