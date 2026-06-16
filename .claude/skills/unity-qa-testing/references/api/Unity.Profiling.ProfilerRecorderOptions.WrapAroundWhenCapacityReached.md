<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerRecorderOptions.WrapAroundWhenCapacityReached.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use to allow sample value overwrite when ProfilerRecorder capacity is exceeded.

If you create a `ProfilerRecorder` with ProfilerRecorderOptions.WrapAroundWhenCapacityReached, the ProfilerRecorder.Count property determines the index of the next sample to be collected. It acts like a running index in a round-robin sample buffer. This is useful in use cases such as mapping data to the histogram texture.

Additional resources: ProfilerRecorderSample.
