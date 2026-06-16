<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.OverlapCircleAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| point | The center of the circle. |
| radius | The radius of the circle. |
| layerMask | Filter to check objects only on specified layers. |
| minDepth | Only include objects with a Z coordinate (depth) greater than or equal to this value. |
| maxDepth | Only include objects with a Z coordinate (depth) less than or equal to this value. |

### Returns

**Collider2D[]** The cast results.

### Description

Get a list of all Colliders that fall within a circular area.

This function is similar to OverlapCircle except that all Colliders that fall within the circle are returned. The Colliders in the returned array are sorted in order of increasing Z coordinate. An empty array is returned if there are no Colliders within the circle.

Note that this function will allocate memory for the returned Collider2D array. You can use Physics2D.OverlapCircle to avoid this overhead if you need to make the check frequently.

Additional resources: OverlapCircle.
