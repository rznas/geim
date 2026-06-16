<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsBuffer.Target.Index.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

GraphicsBuffer can be used as an index buffer.

Allows a buffer to be used as an index buffer for Graphics.DrawProcedural and similar low level drawing APIs.

When you construct a GraphicsBuffer of this type, the value of `stride` must be either 2 (16-bit indices) or 4 (32-bit indices).

DirectX 11 does not allow `Index` buffers to also be Structured. For compute shader mesh data access with DirectX 11 compatibility, it is best to use Raw.

Additional resources: Graphics.RenderPrimitivesIndexed, Graphics.RenderPrimitivesIndexedIndirect, CommandBuffer.DrawProcedural, CommandBuffer.DrawProceduralIndirect, Mesh.indexBufferTarget, Mesh.GetIndexBuffer.
