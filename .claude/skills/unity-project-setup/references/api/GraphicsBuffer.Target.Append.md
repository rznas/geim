<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsBuffer.Target.Append.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

GraphicsBuffer can be used as an append-consume buffer.

Allows a buffer to be treated like a stack in compute shaders. Maps to `AppendStructuredBuffer<T>` or `ConsumeStructuredBuffer<T>` in HLSL.

When you construct a GraphicsBuffer of this type, the value of `stride` must match the stride of the corresponding StructuredBuffer struct type in your HLSL code. It must also be a multiple of 4, and less than 2048.

See Microsoft's HLSL documentation on [AppendStructuredBuffer](https://docs.microsoft.com/en-us/windows/win32/direct3dhlsl/sm5-object-appendstructuredbuffer) and [ConsumeStructuredBuffer](https://docs.microsoft.com/en-us/windows/win32/direct3dhlsl/sm5-object-consumestructuredbuffer).

The buffer size value can be copied into another buffer using GraphicsBuffer.CopyCount, or explicitly reset with GraphicsBuffer.SetCounterValue.

Additional resources: GraphicsBuffer, ComputeShader, Material.SetBuffer.
