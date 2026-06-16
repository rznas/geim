<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchDrawCommandProcedural-sortingPosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Together with BatchDrawCommand.flags, this specifies how to depth sort the instances in this draw command.

If BatchDrawCommandFlags.HasSortingPosition is set, this contains the index of the first position in the BatchCullingOutputDrawCommands.instanceSortingPositions array which contains world-space positions that Unity uses to depth sort the instances. In this case, set this value to the index of the x component of the world space position of the first instance.

 If BatchDrawCommandFlags.HasSortingPosition is not set, Unity casts this value to a float and uses it as an approximate depth to depth sort the instances in the draw command.
