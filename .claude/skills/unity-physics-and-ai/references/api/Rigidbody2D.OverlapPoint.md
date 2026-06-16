<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.OverlapPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| point | A point in world space. |

### Returns

**bool** Whether the point overlapped any of the Rigidbody2D colliders.

### Description

Check if any of the Rigidbody2D colliders overlap a point in space.

Any EdgeCollider2D attached to the Rigidbody2D won't be checked for an overlapping point as they don't have any area therefore do not support this.
