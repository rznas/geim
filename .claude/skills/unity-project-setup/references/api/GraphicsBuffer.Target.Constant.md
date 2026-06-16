<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsBuffer.Target.Constant.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

GraphicsBuffer can be used as a constant buffer (uniform buffer).

If you use this target, you can use the GraphicsBuffer as a parameter to ComputeShader.SetConstantBuffer and Material.SetConstantBuffer.

If you also need the buffer to be bound as a structured buffer, you must add the GraphicsBuffer.Target.Structured flag. Some renderers (such as DX11) do not support binding buffers as both constant and structured buffers.

The data layout of a shader's constant buffer may be different depending on the graphics API. This means ComputeShader.SetConstantBuffer or Material.SetConstantBuffer might overwrite data or set variables to the wrong values. See Writing shaders for different graphics APIs for more information.
