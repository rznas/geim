<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.TempMeshAllocator.AllocateTempMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vertexCount | The number of vertices to allocate, with a maximum limit of 65535 (or UInt16.MaxValue). |
| indexCount | The number of triangle list indices to allocate, where every three indices represent one triangle. Therefore, this value should always be a multiple of three. |
| vertices | The returned vertices. |
| indices | The returned indices. |

### Description

Allocates the specified number of vertices and indices from a temporary allocator.

You can only call this method during the mesh generation phase of the panel and shouldn't use it beyond.
