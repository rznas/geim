<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A path as calculated by the navigation system.

The path is represented as a list of waypoints stored in the corners array. These points are not set directly from user scripts but a NavMeshPath with points correctly assigned is returned by the NavMesh.CalculatePath function and the NavMeshAgent.path property.

### Properties

| Property | Description |
| --- | --- |
| corners | Corner points of the path. (Read Only) |
| status | Status of the path. (Read Only) |

### Constructors

| Constructor | Description |
| --- | --- |
| NavMeshPath | NavMeshPath constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| ClearCorners | Erase all corner points from path. |
| GetCornersNonAlloc | Calculate the corners for the path. |
