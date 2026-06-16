<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.RawFrameDataView.GetSampleName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sampleIndex | Index of the Profiler sample. |

### Returns

**string** Returns sample name. Returns *null* if sample index is invalid.

### Description

Gets the name of the specific sample.

**Note:** *GetSampleName* allocates string when called. Use GetSampleMarkerId to avaoid allocations for simple lookups.
