<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetBufferCounterValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buffer | The destination buffer. |
| counterValue | Value of the append/consume counter. |

### Description

Adds a command to set the counter value of append/consume buffer.

Append/consume and counter buffers (see ComputeBufferType.Append, ComputeBufferType.Counter) keep track of the number of elements in them with a special counter variable. SetCounterValue explicitly sets the counter value.

This can be used to reset the counter or to set it to a specific value.

Note: SetCounterValue can not be called while the buffer is bound via CommandBuffer.SetRandomWriteTarget.
