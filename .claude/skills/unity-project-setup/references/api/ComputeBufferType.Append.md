<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeBufferType.Append.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Append-consume ComputeBuffer type.

Allows a buffer to be treated like a stack in compute shaders. Maps to `AppendStructuredBuffer<T>` or `ConsumeStructuredBuffer<T>` in HLSL.

The `stride` passed when constructing the buffer must match structure size, be a multiple of 4 and less than 2048.

See Microsoft's HLSL documentation on [AppendStructuredBuffer](https://learn.microsoft.com/en-gb/windows/win32/direct3dhlsl/sm5-object-appendstructuredbuffer) and [ConsumeStructuredBuffer](https://learn.microsoft.com/en-gb/windows/win32/direct3dhlsl/sm5-object-consumestructuredbuffer).

The buffer size value can be copied into another buffer using ComputeBuffer.CopyCount, or explicitly reset with ComputeBuffer.SetCounterValue.

Additional resources: ComputeBuffer, ComputeShader, Material.SetBuffer.
