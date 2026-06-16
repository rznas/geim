<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchCullingOutputDrawCommands-instanceSortingPositions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If BatchDrawCommandFlags.HasSortingPosition is set for one or more draw commands, the `instanceSortingPositions` array contains explicit `float3` world space positions that Unity uses for depth sorting.
The culling callback must allocate the memory for the `instanceSortingPositions` using the `UnsafeUtility.Malloc` method and the `Allocator.TempJob` parameter. The memory is released by Unity when the rendering is complete.
If the length of the array is 0, set its value to null.

The culling callback must allocate the memory for this using UnsafeUtility.Malloc with the Allocator.TempJob parameter. Unity releases this memory when it finishes rendering the draw commands.

If no draw commands contain depth-sorted instances, set this to `null`.
