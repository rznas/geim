<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.RawFrameDataView.GetSampleStartTimeMs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sampleIndex | Index of the Profiler sample. |

### Returns

**double** Returns sample start time in milliseconds.

### Description

Gets the start time of the sample. The amount of time is expressed in milliseconds.

The sample start time is a monotonous steady time, which Unity gets via the high frequency timer which is available on the target platform. Usually it represents the time since the machine started up.
