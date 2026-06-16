<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.OverlapAreaAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| pointA | One corner of the rectangle. |
| pointB | Diagonally opposite the point A corner of the rectangle. |
| layerMask | Filter to check objects only on specific layers. |
| minDepth | Only include objects with a Z coordinate (depth) greater than or equal to this value. |
| maxDepth | Only include objects with a Z coordinate (depth) less than or equal to this value. |

### Returns

**Collider2D[]** The cast results returned.

### Description

Get a list of all Colliders that fall within a rectangular area.

This function is similar to OverlapArea except that all Colliders that fall within the area are returned. The Colliders in the returned array are sorted in order of increasing Z coordinate. An empty array is returned if there are no Colliders within the area.

Note that this function will allocate memory for the returned Collider2D array.

Additional resources: OverlapArea.
