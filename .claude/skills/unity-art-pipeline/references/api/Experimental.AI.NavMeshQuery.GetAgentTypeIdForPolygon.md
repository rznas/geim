<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshQuery.GetAgentTypeIdForPolygon.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| polygon | Identifier of a node from a NavMesh surface or link. |

### Returns

**int** Agent type identifier.

### Description

Returns the identifier of the agent type the NavMesh was baked for or for which the link has been configured.

When NavMesh surfaces are baked or links are configured the **Agent Type** allowed to use them needs to be specified. Each **Agent Type** is identified by a unique integer. Operations such as NavMeshQuery.MapLocation, NavMesh.GetSettingsByID, NavMesh.GetSettingsNameFromID, NavMeshBuilder.BuildNavMeshData, and NavMesh.CalculatePath all require an agent type to be specified to distinguish between NavMeshes built for different agent configurations.
