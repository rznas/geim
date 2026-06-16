<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UnityEngine.AIModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The AI module implements the path finding features in Unity.

### Classes

| Class | Description |
| --- | --- |
| NavMesh | Singleton class to access the baked NavMesh. |
| NavMeshAgent | Navigation mesh agent. |
| NavMeshBuilder | Navigation mesh builder interface. |
| NavMeshData | Contains and represents NavMesh data. |
| NavMeshObstacle | An obstacle for NavMeshAgents to avoid. |
| NavMeshPath | A path as calculated by the navigation system. |

### Structs

| Struct | Description |
| --- | --- |
| NavMeshBuildDebugSettings | Specify which of the temporary data generated while building the NavMesh should be retained in memory after the process has completed. |
| NavMeshBuildMarkup | The NavMesh build markup allows you to control how certain objects are treated during the NavMesh build process, specifically when collecting sources for building. |
| NavMeshBuildSettings | The NavMeshBuildSettings struct allows you to specify a collection of settings which describe the dimensions and limitations of a particular agent type. |
| NavMeshBuildSource | The input to the NavMesh builder is a list of NavMesh build sources. |
| NavMeshDataInstance | The instance is returned when adding NavMesh data. |
| NavMeshHit | Information about a position that is the result of a query ran on the NavMesh. |
| NavMeshLinkData | Used for runtime manipulation of links connecting polygons of the NavMesh. |
| NavMeshLinkInstance | Represents a link available for pathfinding. |
| NavMeshQueryFilter | Specifies which agent type and areas to consider when searching the NavMesh. |
| NavMeshTriangulation | Contains data describing a triangulation of a navmesh. |
| OffMeshLinkData | State of OffMeshLink. |

### Enumerations

| Enumeration | Description |
| --- | --- |
| NavMeshBuildDebugFlags | Bitmask used for operating with debug data from the NavMesh build process. |
| NavMeshBuildSourceShape | Used with NavMeshBuildSource to define the shape for building NavMesh. |
| NavMeshCollectGeometry | Used for specifying the type of geometry to collect. Used with NavMeshBuilder.CollectSources. |
| NavMeshObstacleShape | Shape of the obstacle. |
| NavMeshPathStatus | Status of path. |
| ObstacleAvoidanceType | Level of obstacle avoidance. |
| OffMeshLinkType | Link type specifier. |
