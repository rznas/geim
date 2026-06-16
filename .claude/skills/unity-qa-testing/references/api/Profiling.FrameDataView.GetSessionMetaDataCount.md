<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.FrameDataView.GetSessionMetaDataCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Unique identifier associated with the data. |
| tag | Data stream index. |

### Returns

**int** Returns count of metadata chunks.

### Description

Gets the total number of metadata chunks for each *id* and *tag* pair in the Profiler session.

Use the *GetSessionMetaDataCount* method to retrieve the total number of metadata arrays available in the session this frame occurred in. Profiler data can contain frames from different sessions.

When there are multiple Profiler.EmitSessionMetaData calls in the same frame, it results in multiple metadata arrays that are associated with the frame for a given *id*, *tag* pair. This information can be used to write data to the stream in small portions, which reduces the amount of memory needed to hold generated data.

Use *id* to identify the metadata from your project or package.
 Use *tag* to distinguish between different data streams.

 Additional resources: GetSessionMetaData, Profiler.EmitSessionMetaData.
