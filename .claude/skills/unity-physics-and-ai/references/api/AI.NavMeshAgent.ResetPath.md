<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshAgent.ResetPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Clears the current path.

When the path is cleared, the agent will not start looking for a new path until SetDestination is called.

Note that if the agent is on an OffMeshLink when this function is called, it will complete the link immediately.
