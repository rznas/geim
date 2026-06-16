<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh-pathfindingIterationsPerFrame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum number of nodes processed for each frame during the asynchronous pathfinding process.

During the pathfinding process, the pathfinder expands only a certain number of nodes (NavMesh polygons) for each frame. This allows for smoother gameplay when processing long paths or when processing a large number of requests concurrently. However, the path request might take many frames to process.

The iteration count only affects asynchronous pathfinding. This method of pathfinding is used when the NavMesh Agent destination is set with NavMeshAgent.SetDestination or NavMeshAgent.destination.

Increasing this value causes faster path processing but it might also cause frame rate issues. The default value is 100. An ideal value is between 50 and 500.
