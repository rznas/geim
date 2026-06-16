<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerRecorderOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

ProfilerRecorder lifecycle and collection options.

### Properties

| Property | Description |
| --- | --- |
| StartImmediately | Use to start data collection immediately upon ProfilerRecorder initialization. |
| KeepAliveDuringDomainReload | Use to keep the ProfilerRecorder unmanaged instance running across a Unity domain reload. |
| CollectOnlyOnCurrentThread | Use to collect samples only on the thread ProfilerRecorder was initialized on. |
| WrapAroundWhenCapacityReached | Use to allow sample value overwrite when ProfilerRecorder capacity is exceeded. |
| SumAllSamplesInFrame | Use to sum all samples within a frame and collect those as one sample per frame. |
| GpuRecorder | Use to indicate that ProfilerRecorder should collect GPU timing instead of CPU. |
| Default | Default initialization options. Equivalent to (SumSamplesInFrame | WrapAroundWhenCapacityReached). |
