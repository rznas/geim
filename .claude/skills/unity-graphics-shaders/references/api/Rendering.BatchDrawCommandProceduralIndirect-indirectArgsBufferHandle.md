<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchDrawCommandProceduralIndirect-indirectArgsBufferHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

GraphicsBufferHandle of the GraphicsBuffer from which the indirect draw command will be read.

If indexBufferHandle is default then the data at indirectArgsBufferOffset in the referenced buffer is interpreted as an IndirectDrawArgs, and a non indexed indirect draw call will be issued.

 If indexBufferHandle is not default the data will instead be interpreted as an IndirectDrawIndexedArgs and an indexed indirect draw call will be issued.
