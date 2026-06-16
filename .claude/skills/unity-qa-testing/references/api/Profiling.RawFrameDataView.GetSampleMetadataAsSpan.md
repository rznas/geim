<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.RawFrameDataView.GetSampleMetadataAsSpan.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sampleIndex | Index of the Profiler sample. |
| metadataIndex | Metadata index. |

### Returns

**Span<T>** Returns Span<T> of the metadata associated with the sample.

### Description

Returns Span<T> representation of sample metadata.

Use to obtain additional data associated with the sample. *metadataIndex* must be between 0 and GetSampleMetadataCount.
