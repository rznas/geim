<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchCullingOutputDrawCommands-drawRanges.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains filtering settings for draw commands, which tell Unity in which conditions it should render a given draw command.

Each draw range covers a continuous range of draw commands in the BatchCullingOutputDrawCommands.drawCommands array, and the settings in the BatchDrawRange struct apply to all of them. You must populate this with at least one draw range, but you can use more if necessary.

The culling callback must allocate the memory for this command using UnsafeUtility.Malloc with the Allocator.TempJob parameter. Unity releases this memory when it finishes rendering the draw commands.
