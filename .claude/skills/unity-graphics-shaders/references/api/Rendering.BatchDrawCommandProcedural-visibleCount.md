<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchDrawCommandProcedural-visibleCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The number of instances to draw with this draw command. This must be a value greater than `1`.

If BatchDrawCommandFlags.HasSortingPosition is set, you must set this to `1`. This is because Unity doesn't sort instances within a draw command, it only sorts draw commands. This means that you must place depth-sorted instances in separate draw commands.
