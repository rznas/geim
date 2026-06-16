<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Singleton class to access the baked NavMesh.

Use the NavMesh class to perform spatial queries such as pathfinding and walkability tests. This class also lets you set the pathfinding cost for specific area types, and tweak the global behavior of pathfinding and avoidance.

Before you can use spatial queries, you must first bake the NavMesh to your scene.

See also:
 • Create a NavMesh – for more information on how to setup and bake NavMesh
 • Areas and Costs – to learn how to use different Area types.
 • NavMeshAgent – to learn how to control and move NavMesh Agents.
 • NavMeshObstacle – to learn how to control NavMesh Obstacles using scripting.
 • NavMeshLink – to learn how to control Off-Mesh Links using scripting.

### Static Properties

| Property | Description |
| --- | --- |
| AllAreas | Area mask constant that includes all NavMesh areas. |
| avoidancePredictionTime | Describes how far in the future the agents predict collisions for avoidance. |
| onPreUpdate | Set a function to be called before the NavMesh is updated during the frame update execution. |
| pathfindingIterationsPerFrame | The maximum number of nodes processed for each frame during the asynchronous pathfinding process. |

### Static Methods

| Method | Description |
| --- | --- |
| AddLink | Adds a link to the NavMesh. The link is described by the NavMeshLinkData struct. |
| AddNavMeshData | Adds the specified NavMeshData to the game. |
| CalculatePath | Calculate a path between two points and store the resulting path. |
| CalculateTriangulation | Calculates a triangulation of all the NavMeshes that are present in the scene at the time of the call. |
| CreateSettings | Creates and returns a new entry of NavMesh build settings available for runtime NavMesh building. |
| FindClosestEdge | Locate the closest NavMesh edge from a point on the NavMesh. |
| GetAreaCost | Gets the cost for path finding over geometry of the area type. |
| GetAreaFromName | Returns the area index for a named NavMesh area type. |
| GetAreaNames | Get all the NavMesh area names. |
| GetLinkOwner | Gets the object, if any, that is associated with the link instance. |
| GetSettingsByID | Returns an existing entry of NavMesh build settings. |
| GetSettingsByIndex | Returns an existing entry of NavMesh build settings by its ordered index. |
| GetSettingsCount | Returns the number of registered NavMesh build settings. |
| GetSettingsNameFromID | Returns the name associated with the NavMesh build settings matching the provided agent type ID. |
| IsLinkActive | Determines whether the instance of the link can be used to calculate paths, and if NavMesh agents can move over it. |
| IsLinkOccupied | Determines whether or not a NavMesh agent is currently using this link. |
| IsLinkValid | Determines whether the link instance is part of the current data used for navigation. |
| Raycast | Trace a line between two points on the NavMesh. |
| RemoveAllNavMeshData | Removes all NavMesh surfaces and links from the game. |
| RemoveLink | Removes a link from the NavMesh. |
| RemoveNavMeshData | Removes the specified NavMeshDataInstance from the game, making it unavailable for agents and queries. |
| RemoveSettings | Removes the build settings matching the agent type ID. |
| SamplePosition | Finds the nearest point based on the NavMesh within a specified range. |
| SetAreaCost | Sets the cost for finding path over geometry of the area type on all agents. |
| SetLinkActive | Activates or deactivates the link instance. An active link instance can be traversed by agents and used to plan paths, but a deactivated link cannot. |
| SetLinkOwner | Associates an object with the instance of a link. |

### Delegates

| Delegate | Description |
| --- | --- |
| OnNavMeshPreUpdate | Registers callback methods to be invoked before the NavMesh system updates. |
