<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshDataInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The instance is returned when adding NavMesh data.

A valid NavMesh data instance is available to the navigation system. This means you can calculate paths etc. using that instance. You also need the instance if you want to remove the NavMesh data at a later time.

Additional resources: Remove, NavMesh.AddNavMeshData, NavMesh.RemoveNavMeshData.

### Properties

| Property | Description |
| --- | --- |
| owner | Get or set the owning Object. |
| valid | True if the NavMesh data is added to the navigation system - otherwise false (Read Only). |

### Public Methods

| Method | Description |
| --- | --- |
| Remove | Removes this instance from the NavMesh system. |
