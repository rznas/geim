<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.ClosestPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position from which to find the closest point on this Rigidbody. |

### Returns

**Vector2** A point on the perimeter of a Collider attached to this rigidbody that is closest to the specified `position`.

### Description

Returns a point on the perimeter of all enabled Colliders attached to this Rigidbody that is closest to the specified `position`.

This function provides the ability to calculate the closest point of a specified `position` to the perimeter of any enabled Collider2D type attached to this Rigidbody.

 In the case where the `position` is inside any of the enabled Collider2D attached to this Rigidbody, the input `position` is returned instead.
