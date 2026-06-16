<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsBuffer.Target.IndirectArguments.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

GraphicsBuffer can be used as an indirect argument buffer for indirect draws and dispatches.

Indirect arguments buffers are used for Graphics.RenderPrimitivesIndirect, ComputeShader.DispatchIndirect, RayTracingShader.DispatchIndirect or Graphics.RenderMeshIndirect.

The buffer size must be a minimum of 12 bytes. The underlying DirectX 11 unordered access view format will be R32_UINT, and shader resource view format will be R32 typeless.

Additional resources: GraphicsBuffer, ComputeShader, Material.SetBuffer, GraphicsBuffer.CopyCount.
