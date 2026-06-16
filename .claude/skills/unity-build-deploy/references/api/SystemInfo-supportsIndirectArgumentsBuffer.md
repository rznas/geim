<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-supportsIndirectArgumentsBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns `true` if the graphics system supports GPU draw calls with indirect argument buffers. (Read Only)

The following methods use indirect argument buffers and do not have fallbacks for systems that do not support GPU draw calls with indirect argument buffers:
 Graphics.DrawProceduralIndirect, Graphics.DrawMeshInstancedIndirect, CommandBuffer.DrawProceduralIndirect, CommandBuffer.DrawMeshInstancedIndirect.
 Ensure that the system supports indirect argument buffers before using those methods.
