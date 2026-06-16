<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsBuffer.SetCounterValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| counterValue | Value of the append/consume counter. |

### Description

Sets counter value of append/consume buffer.

Append/consume and counter buffers (see GraphicsBuffer.Target.Append, GraphicsBuffer.Target.Counter) keep track of the number of elements in them with a special counter variable. SetCounterValue explicitly sets the counter value.

This can be used to reset the counter or to set it to a specific value.

Note: SetCounterValue can not be called while the buffer is bound via Graphics.SetRandomWriteTarget.

Additional resources: CopyCount, Graphics.SetRandomWriteTarget.
