<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeBufferType.Counter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

ComputeBuffer with a counter.

Adds a "counter" to a `RWStructuredBuffer` and allows using `IncrementCounter` / `DecrementCounter` HLSL functions on it.

The `stride` passed when constructing the buffer must match structure size, be a multiple of 4 and less than 2048.

See Microsoft's HLSL documentation on [IncrementCounter](https://msdn.microsoft.com/en-us/library/windows/desktop/ff471497.aspx) and [DecrementCounter](https://msdn.microsoft.com/en-us/library/windows/desktop/ff471495.aspx).

The buffer size value can be copied into another buffer using ComputeBuffer.CopyCount, or explicitly reset with ComputeBuffer.SetCounterValue.

Additional resources: ComputeBuffer, ComputeShader, Material.SetBuffer.
