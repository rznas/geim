<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshAgent-steeringTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get the current steering target along the path. (Read Only)

This is typically the next corner along the path or the end point of the path.

Unless the agent is moving on an OffMeshLink, there is a straight path between the agent and the steeringTarget.

When approaching an OffMeshLink for traversal - the value is the position where the agent will enter the link. While agent is traversing an OffMeshLink the value is the position where the agent will leave the link.
