<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshQueryFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies which agent type and areas to consider when searching the NavMesh.

This struct is used with the NavMesh query methods overloaded with the query filter argument. Additional resources: NavMesh.CalculatePath, NavMesh.Raycast, NavMesh.FindClosestEdge, NavMesh.SamplePosition.

### Properties

| Property | Description |
| --- | --- |
| agentTypeID | The agent type ID, specifying which navigation meshes to consider for the query functions. |
| areaMask | A bitmask representing the traversable area types. |

### Public Methods

| Method | Description |
| --- | --- |
| GetAreaCost | Returns the area cost multiplier for the given area type for this filter. |
| SetAreaCost | Sets the pathfinding cost multiplier for this filter for a given area type. |
