<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.GetAreaCost.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| areaIndex | Index of the area to get. |

### Description

Gets the cost for path finding over geometry of the area type.

The value applies to all agents unless you the value has been customized per agent by calling NavMeshAgent.SetAreaCost.

Use GetAreaFromName to find the area index based on the name of the NavMesh area type.

Additional resources: Areas and Costs to learn how to use different Area types.
