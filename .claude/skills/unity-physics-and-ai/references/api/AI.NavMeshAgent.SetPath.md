<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshAgent.SetPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | New path to follow. |

### Returns

**bool** True if the path is succesfully assigned.

### Description

Assign a new path to this agent.

If the path is succesfully assigned the agent will resume movement toward the new target. If the path cannot be assigned the path will be cleared (see ResetPath).
