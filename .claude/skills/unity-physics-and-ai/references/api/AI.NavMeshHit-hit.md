<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshHit-hit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flag set when the query encounters a particular valid situation.

The queries set this flag differently. NavMesh.SamplePosition reports `hit` as true every time it returns a valid position on the NavMesh. The rest of the methods report `hit` as true when the edge of a NavMesh polygon blocks the query before it can reach the target position. In all other cases `hit` is false.
