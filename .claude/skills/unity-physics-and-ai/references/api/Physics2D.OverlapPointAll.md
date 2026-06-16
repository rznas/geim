<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.OverlapPointAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| minDepth | Only include objects with a Z coordinate (depth) greater than or equal to this value. |
| maxDepth | Only include objects with a Z coordinate (depth) less than or equal to this value. |
| point | A point in space. |
| layerMask | Filter to check objects only on specific layers. |

### Returns

**Collider2D[]** The cast results returned.

### Description

Get a list of all Colliders that overlap a point in space.

This function is similar to OverlapPoint except that all Colliders that overlap the point are returned. The Colliders in the returned array are sorted in order of increasing Z coordinate. An empty array is returned if there are no Colliders over the point.

Note that this function will allocate memory for the returned Collider2D array.

Additional resources: OverlapPoint.
