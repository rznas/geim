<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeBufferType.IndirectArguments.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

ComputeBuffer used for Graphics.DrawProceduralIndirect, ComputeShader.DispatchIndirect or Graphics.DrawMeshInstancedIndirect arguments.

Buffer size has to be at least 12 bytes. Underlying DX11 unordered access view format will be R32_UINT, and shader resource view format will be R32 typeless.

Additional resources: ComputeBuffer, ComputeShader, Material.SetBuffer, ComputeBuffer.CopyCount.
