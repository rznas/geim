<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeBuffer.CopyCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| src | Append/consume buffer to copy the counter from. |
| dst | A buffer to copy the counter to. |
| dstOffsetBytes | Target byte offset in `dst`. |

### Description

Copy counter value of append/consume buffer into another buffer.

Append/consume and counter buffers (see ComputeBufferType.Append, ComputeBufferType.Counter) keep track of the number of elements in them with a special counter variable. CopyCount takes a buffer as `src`, and copies its counter value into `dst` buffer at given byte offset.

This is most commonly used in conjunction with Graphics.DrawProceduralIndirect, to render arbitrary number of primitives without reading their count back to the CPU.

On DX11 there is a restriction on the `dst` buffer - it must have been created with ComputeBufferType.Raw or ComputeBufferType.IndirectArguments type. On other platforms `dst` can be any type.

Additional resources: SetCounterValue.
