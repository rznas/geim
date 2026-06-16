<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsBuffer.UsageFlags.LockBufferForWrite.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable the LockBufferForWrite and UnlockBufferAfterWrite methods on the GraphicsBuffer. CAUTION: when using this flag, ensure that you do not introduce memory read/write hazards.

With this flag, the buffer can be updated at any time using GraphicsBuffer.SetData and equivalent functions that write data from the CPU.
 The GPU can only read from the buffer, including using it as a copy source. No writes from the GPU are allowed, including using the GPU as a copy destination or a UAV. This means that when using GraphicsBuffer.Target.Raw, for example, you can use `ByteAddressBuffer` but not `RWByteAddressBuffer` in an HLSL shader. Using `RWByteAddressBuffer` allows writes into the buffer.
 The buffer can be written to directly from the CPU using GraphicsBuffer.LockBufferForWrite. For more information, see GraphicsBuffer.LockBufferForWrite.
 This mode might place the buffer in the CPU visible GPU memory or in GPU visible CPU memory depending on a platform.
 Additional resources: GraphicsBuffer GraphicsBuffer.LockBufferForWrite.
