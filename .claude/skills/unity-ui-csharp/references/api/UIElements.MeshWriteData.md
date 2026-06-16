<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.MeshWriteData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents the vertex and index data allocated for drawing the content of a VisualElement.

You can use this object to fill the values for the vertices and indices only during a callback to the VisualElement.generateVisualContent delegate. Do not store the passed MeshWriteData outside the scope of VisualElement.generateVisualContent as Unity could recycle it for other callbacks.

### Properties

| Property | Description |
| --- | --- |
| indexCount | The number of indices successfully allocated for VisualElement content drawing. |
| vertexCount | The number of vertices successfully allocated for VisualElement content drawing. |

### Public Methods

| Method | Description |
| --- | --- |
| SetAllIndices | Fills the values of the allocated indices with values copied directly from an array. Each 3 consecutive indices form a single triangle. |
| SetAllVertices | Fills the values of the allocated vertices with values copied directly from an array. When this method is called, it is not possible to use SetNextVertex to fill the allocated vertices array. |
| SetNextIndex | Assigns the value of the next index of the allocated indices list. |
| SetNextVertex | Assigns the value of the next vertex of the allocated vertices list. |
