<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsBuffer.Target.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The intended targets for GraphicsBuffer.

Provide the intended targets (target) when creating a GraphicsBuffer. For example, pass GraphicsBuffer.Target.Index for a buffer to be usable as a geometry index buffer.

Different platforms and devices might or might not support different targets. Any target values different from Vertex, Index or Constant require the compute shader support (see SystemInfo.supportsComputeShaders).

You can combine values in this enum. For example, `GraphicsBuffer.Target.Index | GraphicsBuffer.Target.Raw` creates a buffer that can be used both as an index buffer in a Graphics.DrawProcedural call, and as a raw byte address buffer in a compute shader.

DirectX 11 does not allow Index or Vertex buffers to also be Structured. For compute shader mesh data access with DirectX 11 compatibility, use Raw.

Additional resources: GraphicsBuffer class, GraphicsBuffer constructor, Mesh.vertexBufferTarget, Mesh.indexBufferTarget.

### Properties

| Property | Description |
| --- | --- |
| Vertex | GraphicsBuffer can be used as a vertex buffer. |
| Index | GraphicsBuffer can be used as an index buffer. |
| CopySource | GraphicsBuffer can be used as a source for CopyBuffer. |
| CopyDestination | GraphicsBuffer can be used as a destination for CopyBuffer. |
| Structured | GraphicsBuffer can be used as a structured buffer. |
| Raw | GraphicsBuffer can be used as a raw byte-address buffer. |
| Append | GraphicsBuffer can be used as an append-consume buffer. |
| Counter | GraphicsBuffer with an internal counter. |
| IndirectArguments | GraphicsBuffer can be used as an indirect argument buffer for indirect draws and dispatches. |
| Constant | GraphicsBuffer can be used as a constant buffer (uniform buffer). |
