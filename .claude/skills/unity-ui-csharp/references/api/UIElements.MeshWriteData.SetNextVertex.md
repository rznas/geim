<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.MeshWriteData.SetNextVertex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vertex | The value of the next vertex. |

### Description

Assigns the value of the next vertex of the allocated vertices list.

Used to iteratively fill the values of the allocated vertices via repeated calls to this function until all values have been provided. This way of filling vertex data is mutually exclusive with the use of SetAllVertices. After each invocation to this function, the internal counter for the next vertex is automatically incremented. When this method is called, it is not possible to use SetAllVertices to fill the vertices.

 Note that calling SetNextVertex fewer times than the allocated number of vertices will leave the remaining vertices with random values as MeshGenerationContext.Allocate does not initialize the returned data to 0 to avoid redundant work.
