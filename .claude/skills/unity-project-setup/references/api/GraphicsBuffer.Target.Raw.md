<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsBuffer.Target.Raw.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

GraphicsBuffer can be used as a raw byte-address buffer.

In HLSL shaders, this maps to `ByteAddressBuffer` or `RWByteAddressBuffer`. The underlying DirectX 11 format for shader access is typeless R32.

See Microsoft's HLSL documentation on [ByteAddressBuffer](https://docs.microsoft.com/en-us/windows/win32/direct3dhlsl/sm5-object-byteaddressbuffer) and [RWByteAddressBuffer](https://docs.microsoft.com/en-us/windows/win32/direct3dhlsl/sm5-object-rwbyteaddressbuffer).

Additional resources: GraphicsBuffer, ComputeShader, Material.SetBuffer, Mesh.vertexBufferTarget, Mesh.indexBufferTarget.
