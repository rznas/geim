<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchCullingOutputDrawCommands-instanceSortingPositionFloatCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If BatchDrawCommandFlags.HasSortingPosition is set for one or more draw commands, this contains float3 world-space positions that Unity uses for depth sorting.

You must set this in the OnPerformCulling callback.

**Note**: The number of elements is expressed in floats. Because Unity expects three floats per instance, you should set this value to three times the number of depth-sorted instances.
