<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerRecorder.Count.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Collected samples count.

Use to determine how many samples had been collected by the ProfilerRecorder. Count is always >= 0 and < Capacity.

**Note:** If recorder is created with ProfilerRecorderOptions.WrapAroundWhenCapacityReached the Count property determines the index of the next sample to be collected. You can look at it as a running index in a round-robin sample buffer. This is useful in use cases such as mapping data to the histogram texture.
