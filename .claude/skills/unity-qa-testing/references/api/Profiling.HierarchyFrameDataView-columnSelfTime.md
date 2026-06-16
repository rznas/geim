<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView-columnSelfTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The CPU time in milliseconds that Unity spends in a sample itself, excluding the time from child samples.

This value is the columnTotalTime value of the sample minus the columnTotalTime values of child samples.

**Note:** If inverted mode is active, for non-root items, this value represents the part of their parent's `columnSelfTime` that their sample stacks contain.
