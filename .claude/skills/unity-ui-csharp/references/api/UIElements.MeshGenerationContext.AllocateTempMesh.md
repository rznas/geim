<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.MeshGenerationContext.AllocateTempMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vertexCount | The number of vertices to allocate. The maximum is 65535 (or UInt16.MaxValue). |
| indexCount | The number of triangle list indices to allocate. Each 3 indices represent one triangle, so this value should be multiples of 3. |
| vertices | The returned vertices. |
| indices | The returned indices. |

### Description

Allocates the specified number of vertices and indices from a temporary allocator.

You can only call this method during the mesh generation phase of the panel and shouldn't use it beyond.
