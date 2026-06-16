<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MeshUtility.AcquireReadOnlyMeshData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mesh | The input mesh. |
| meshes | The input meshes. |

### Returns

**MeshDataArray** Returns a read-only snapshot of Mesh data. See MeshDataArray and MeshData.

### Description

Gets a snapshot of Mesh data for read-only access in the Unity Editor.

This method retrieves the same data as Mesh.AcquireReadOnlyMeshData.

Mesh.AcquireReadOnlyMeshData only retrieves data from meshes where Mesh.isReadable is `true`. In the Editor, all meshes are readable, even when Mesh.isReadable is set to `false`. This Editor-only method skips the `isReadable` check, and retrieves data whether Mesh.isReadable is `true` or `false`.

 Additional resources: Mesh.AcquireReadOnlyMeshData, MeshDataArray, MeshData
