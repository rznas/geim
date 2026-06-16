<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerCounterOptions.ResetToZeroOnFlush.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies that the counter's current value should be reset to zero each time it is reported to the Unity Profiler.

If the counter has also been configured with ProfilerCounterOptions.FlushOnEndOfFrame, then this will cause the counter's value to be reset to zero at the end of every frame. Otherwise, it will be reset to zero every time it is manually reported via its `Sample` method.
