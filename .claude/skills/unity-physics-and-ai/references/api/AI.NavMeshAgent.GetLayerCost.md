<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshAgent.GetLayerCost.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| layer | Layer index. |

### Returns

**float** Current cost of specified layer.

### Description

Gets the cost for crossing ground of a particular type.

The cost of a path is the amount of "difficulty" involved in following it - the shortest path may not be the quickest if it passes over difficult ground, such as mud, snow, etc. Different types of ground are denoted by navmesh layers in Unity. The cost of a particular layer is given in cost units per distance unit. Note that the cost of a path applies to the pathfinding only and does not automatically affect the movement speed of the agent when following the path. Indeed, the path's cost may denote other factors such as danger (safe but long path through a minefield) or visibility (long path that keeps a character in the shadows).
