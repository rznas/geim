<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.RawFrameDataView.GetSampleMetadataAsInt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sampleIndex | Index of the Profiler sample. |
| metadataIndex | Metadata index. |

### Returns

**int** Returns integer representation of sample metadata value.

### Description

Gets sample metadata value as integer.

Use to obtain additional data associated with the sample. *metadataIndex* must be between 0 and GetSampleMetadataCount.
