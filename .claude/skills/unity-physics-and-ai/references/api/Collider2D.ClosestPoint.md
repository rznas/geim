<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D.ClosestPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position from which to find the closest point on this Collider. |

### Returns

**Vector2** A point on the perimeter of this Collider that is closest to the specified `position`.

### Description

Returns a point on the perimeter of this Collider that is closest to the specified `position`.

This function provides the ability to calculate the closest point of a specified `position` to the perimeter of any Collider2D type.

 In the case where the `position` is inside this Collider or this Collider is disabled, then the input `position` is returned instead.

 Additional resources: Rigidbody2D.ClosestPoint & Physics2D.ClosestPoint.
