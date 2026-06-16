<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsBuffer.CopyCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| src | The source GraphicsBuffer. |
| dst | The destination GraphicsBuffer. |
| dstOffsetBytes | The destination buffer offset in bytes. |

### Description

Copy the counter value of a GraphicsBuffer into another buffer.

Append/consume buffers (see GraphicsBuffer.Target.Append and counter buffers GraphicsBuffer.Target.Counter) keep track of the number of elements in them with a special counter variable. CopyCount takes such a buffer as `src`, and copies its counter value into `dst` buffer at given byte offset.

This is most commonly used in conjunction with Graphics.RenderPrimitivesIndirect, to render an arbitrary number of primitives without reading their count back to the CPU.

The `src` buffer must have been created with a usage target of GraphicsBuffer.Target.Append or GraphicsBuffer.Target.Counter.

On DirectX 11 and 12, the `dst` buffer must have been created with a usage target of GraphicsBuffer.Target.Raw or GraphicsBuffer.Target.IndirectArguments. For other graphics APIs, there is no such restriction.

Additional resources: SetCounterValue.
