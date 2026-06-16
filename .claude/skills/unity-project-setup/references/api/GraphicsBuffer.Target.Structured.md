<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsBuffer.Target.Structured.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

GraphicsBuffer can be used as a structured buffer.

In HLSL shaders, this maps to `StructuredBuffer<T>` or `RWStructuredBuffer<T>`.

When you construct a GraphicsBuffer of this type, the value of `stride` must match the stride of the corresponding `StructuredBuffer` struct type in your HLSL code.

The value of `stride` must also be a multiple of 4, and less than 2048.

To meet requirements on some platforms and avoid performance issues, `stride` should be a multiple of 16. Use float4 and float4x4 variables to create a multiple of 16, and put smaller variables inside them. Avoid the use of 'padding' variables to create a multiple of 16, for example using a float3 variable to pad a struct containing a single float, because some data types may be different sizes on different platforms.

If you use a mix of variable sizes, the data layout of a shader's structured buffer may be different depending on the graphics API. This means ComputeShader.SetBuffer or Material.SetBuffer might overwrite data or set variables to the wrong values. See Writing shaders for different graphics APIs for more information.

See Microsoft's HLSL documentation on [StructuredBuffer](https://docs.microsoft.com/en-us/windows/win32/direct3dhlsl/sm5-object-structuredbuffer) and [RWStructuredBuffer](https://docs.microsoft.com/en-us/windows/win32/direct3dhlsl/sm5-object-rwstructuredbuffer).

DirectX 11 does not allow Index or ::Vertex buffers to also be `Structured`. For compute shader mesh data access with DirectX 11 compatibility, it is best to use Raw.

Additional resources: GraphicsBuffer, ComputeShader, Material.SetBuffer.
