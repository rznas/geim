<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshHit-normal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Normal of the polygon edge where the query terminates.

The vector points towards the inner side of the last NavMesh polygon that the query traverses. 

If the query terminates inside a polygon, and is therefore not blocked by an edge, the normal is Vector3.zero.

**Note:** None of the query methods returns the normal of the polygon itself.
