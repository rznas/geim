<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeBufferType.Raw.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Raw ComputeBuffer type (byte address buffer).

In HLSL shaders, this maps to `ByteAddressBuffer` or `RWByteAddressBuffer`. Underlying DX11 format for shader access is typeless R32.

See Microsoft's HLSL documentation on [ByteAddressBuffer](https://msdn.microsoft.com/en-us/library/windows/desktop/ff471453.aspx) and [RWByteAddressBuffer](https://msdn.microsoft.com/en-us/library/windows/desktop/ff471475.aspx).

Additional resources: ComputeBuffer, ComputeShader, Material.SetBuffer.
