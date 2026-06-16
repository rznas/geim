<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchCullingOutputDrawCommands-indirectDrawCommands.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The array that contains indirect draw commands to render as the result of the OnPerformCulling call.

This can contain as many indirect commands as necessary, and each command can render multiple instances. The culling callback must allocate the memory for this using UnsafeUtility.Malloc with the Allocator.TempJob parameter. Unity releases this memory when it finishes rendering the draw commands.
