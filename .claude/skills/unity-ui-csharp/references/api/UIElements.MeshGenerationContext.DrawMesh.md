<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.MeshGenerationContext.DrawMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vertices | The vertices to be drawn. All referenced vertices must be initialized. |
| indices | The triangle list indices. Must be a multiple of 3. All indices must be initialized. |
| texture | An optional texture to be applied on the triangles. Pass null to rely on vertex colors only. |

### Description

Records a draw command with the provided triangle-list indexed mesh.

You can generate the mesh content later because the renderer doesn't immediately process the mesh. The mesh content must be fully generated before you return from GenerateVisualContent, unless you call AddMeshGenerationJob.

 The renderer will process the mesh when the following conditions are met: - GenerateVisualContent has been called on all dirty VisualElements - All registered generation dependencies have completed - All deferred generation callbacks have been issued

### Parameters

| Parameter | Description |
| --- | --- |
| vertices | The vertices to be drawn. All referenced vertices must be initialized. |
| indices | The triangle list indices. Must be a multiple of 3. All indices must be initialized. |
| texture | An optional texture to be applied on the triangles. Pass null to rely on vertex colors only. |
| textureOptions | Flags that apply to the provided texture for this draw call. |

### Description

Records a draw command with the provided triangle-list indexed mesh.

You can generate the mesh content later because the renderer doesn't immediately process the mesh. The mesh content must be fully generated before you return from GenerateVisualContent, unless you call AddMeshGenerationJob.

 The renderer will process the mesh when the following conditions are met: - GenerateVisualContent has been called on all dirty VisualElements - All registered generation dependencies have completed - All deferred generation callbacks have been issued
