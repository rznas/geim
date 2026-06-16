<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.PolygonId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a compact identifier for the data of a NavMesh node.

It is used in NavMeshQuery operations for pinpointing and getting access to relevant nodes in the NavMesh. Each node can be used by only one type of agent. Additional resources: NavMeshSurface.

This identifier becomes invalid once the node gets removed from the NavMesh, either by completely removing the surface or by modifying the surface in the node's immediate vicinity.

Additional resources: NavMeshQuery.IsValid.
