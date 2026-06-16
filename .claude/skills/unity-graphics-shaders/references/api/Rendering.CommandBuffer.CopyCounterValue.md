<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.CopyCounterValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| src | Append/consume buffer to copy the counter from. |
| dst | A buffer to copy the counter to. |
| dstOffsetBytes | Target byte offset in `dst` buffer. |

### Description

Adds a command to copy ComputeBuffer or GraphicsBuffer counter value.

Note: this command can not be used on LightEvent command buffers.

Additional resources: ComputeBuffer.CopyCount and GraphicsBuffer.CopyCount.
