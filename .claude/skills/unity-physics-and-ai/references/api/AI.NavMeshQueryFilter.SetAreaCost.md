<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshQueryFilter.SetAreaCost.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| areaIndex | The area index to set the cost for. |
| cost | The cost for the supplied area index. |

### Description

Sets the pathfinding cost multiplier for this filter for a given area type.

Calling SetAreaCost the first time on a NavMeshQueryFilter object causes an internal allocation of the maximum 32 cost modifiers.
