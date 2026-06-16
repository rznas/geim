<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshHit-position.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Position of hit.

It is a position that a **NavMesh Agent** can move to, if it has a agentTypeID value that matches the agentTypeID of the NavMesh at that position. The position lies inside a NavMesh polygon. When the NavMesh also contains HeightMesh data, the position aligns to the HeightMesh polygon that is closest on the vertical axis.

If the position coordinates are not finite, the entire NavMeshHit object represents the result of an invalid query.

Additional resources: NavMeshAgent.SetDestination, NavMeshAgent.Warp, NavMeshAgent.Move.
