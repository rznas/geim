<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchFilterSettings-allDepthSorted.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates whether all draw commands in the current draw range have the BatchDrawCommandFlags.HasSortingPosition flag set.

Set this to `true` if all the draw commands have the flag set, and `false` otherwise. As an optimization, Unity can efficiently skip the rendering of the entire draw range when this is true and the render pass is not depth sorted. Otherwise, Unity must check every draw command inside the range separately for the flag.
