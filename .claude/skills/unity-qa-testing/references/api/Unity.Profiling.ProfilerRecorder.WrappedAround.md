<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerRecorder.WrappedAround.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates if ProfilerRecorder capacity has been exceeded.

Returns true if ProfilerRecorder capacity has been exceeded and WrapAroundWhenCapacityReached had been specified.

If ProfilerRecorder is created with ProfilerRecorderOptions.WrapAroundWhenCapacityReached the Count property determines the index of the next sample to be collected. You can look at it as a running index in a round-robin sample buffer. This is useful in use cases such as mapping data to the histogram texture.
