<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeBufferType.Structured.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

ComputeBuffer that you can use as a structured buffer.

This is otherwise identical to ComputeBufferType.Default except that if any other ComputeBufferType flags are used, the resulting ComputeBuffer will not be able to be bound as a structured buffer unless ComputeBufferType.Structured is explicitly added.

When you construct a ComputeBuffer of this type, the value of `stride` must match the stride of the corresponding `StructuredBuffer` struct type in your HLSL code.

The value of `stride` must also be a multiple of 4, and less than 2048.

To meet requirements on some platforms and avoid performance issues, `stride` should be a multiple of 16. Use float4 and float4x4 variables to create a multiple of 16, and put smaller variables inside them. Avoid the use of 'padding' variables to create a multiple of 16, for example using a float3 variable to pad a struct containing a single float, because some data types may be different sizes on different platforms.

If you use a mix of variable sizes, the data layout of a shader's structured buffer may be different depending on the graphics API. This means ComputeShader.SetBuffer or Material.SetBuffer might overwrite data or set variables to the wrong values. See Writing shaders for different graphics APIs for more information.
