<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.OverlapBoxAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| point | The center of the box. |
| size | The size of the box. |
| angle | The angle of the box. |
| layerMask | Filter to check objects only on specific layers. |
| minDepth | Only include objects with a Z coordinate (depth) greater than this value. |
| maxDepth | Only include objects with a Z coordinate (depth) less than this value. |

### Returns

**Collider2D[]** The cast results returned.

### Description

Get a list of all Colliders that fall within a box area.

This function is similar to OverlapBox except that all Colliders that fall within the box are returned. The Colliders in the returned array are sorted in order of increasing Z coordinate. An empty array is returned if there are no Colliders within the box.

Note that this function will allocate memory for the returned Collider2D array.

Additional resources: OverlapBox.
