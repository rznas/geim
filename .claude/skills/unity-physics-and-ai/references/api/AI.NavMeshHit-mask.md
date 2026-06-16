<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshHit-mask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Bitmask that specifies the NavMesh area type at the point of hit.

The index at which the binary representation of the integer contains a bit turned on is the number of the area type.
 If the query proceeds uninterrupted to the target position, the `mask` represents the area type of the NavMesh polygon where the resulting position lies.
 When the query terminates at the edge of a NavMesh polygon that is of a different type than the ones allowed by the input parameters, the `mask` represents the area type of the polygon that blocks the query.
 When the query terminates at an edge of the NavMesh the `mask` is 0, to signify that there is no polygon beyond that position.
