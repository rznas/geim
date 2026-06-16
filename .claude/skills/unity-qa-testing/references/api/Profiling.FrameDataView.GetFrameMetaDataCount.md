<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.FrameDataView.GetFrameMetaDataCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Project or package identifier. |
| tag | Data stream index. |

### Returns

**int** Returns count of metadata chunks.

### Description

Gets the total number of metadata chunks for each *id* and *tag* pair in the frame.

Use the *GetSessionMetaDataCount* method to retrieve the total number of metadata arrays available in this session.

When there are multiple Profiler.EmitFrameMetaData calls in the same frame, it results in multiple metadata arrays that are associated with the frame for a given *id*, *tag* pair. This information can be used to write data to the stream in small portions, which reduces the amount of memory needed to hold generated data.

Use *id* to identify the metadata from your project or package.
 Use *tag* to distinguish between different data streams.

 Additional resources: GetFrameMetaData, Profiler.EmitFrameMetaData.
