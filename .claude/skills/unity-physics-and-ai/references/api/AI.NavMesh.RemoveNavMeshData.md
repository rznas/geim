<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.RemoveNavMeshData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The instance of a NavMesh to remove. |

### Description

Removes the specified NavMeshDataInstance from the game, making it unavailable for agents and queries.

Use the instance returned by AddNavMeshData to remove the corresponding NavMesh data. If the instance is not valid, e.g. has been removed before, the call has no effect.

Additional resources: NavMeshDataInstance.Remove, RemoveAllNavMeshData.
