<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.MeshWriteData.SetNextIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The value of the next index. |

### Description

Assigns the value of the next index of the allocated indices list.

Used to iteratively fill the values of the allocated indices via repeated calls to this function until all values have been provided. This way of filling index data is mutually exclusive with the use of SetAllIndices. After each invocation to this function, the internal counter for the next index is automatically incremented. When this method is called, it is not possible to use SetAllIndices to fill the indices. The index values provided refer directly to the vertices allocated in the same MeshWriteData object. Thus, an index of 0 means the first vertex and index 1 means the second vertex and so on. 

 Note that calling SetNextIndex fewer times than the allocated number of indices will leave the remaining indices with random values as MeshGenerationContext.Allocate does not initialize the returned data to 0 to avoid redundant work.
