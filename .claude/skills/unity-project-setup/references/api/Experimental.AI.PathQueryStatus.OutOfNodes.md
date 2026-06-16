<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.PathQueryStatus.OutOfNodes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Query ran out of node stack space during a search.

This happens when the query has visited more nodes than there is room in the NavMeshQuery. To fix this issue try a larger value for the `pathNodePoolSize` parameter when creating the NavMeshQuery.
