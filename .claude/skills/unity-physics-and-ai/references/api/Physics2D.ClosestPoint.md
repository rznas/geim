<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.ClosestPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position from which to find the closest point on the specified `Collider`. |
| Collider | The Collider on which to find the closest specified `position`. |

### Returns

**Vector2** A point on the perimeter of the `Collider` that is closest to the specified `position`.

### Description

Returns a point on the perimeter of the `Collider` that is closest to the specified `position`.

This function provides the ability to calculate the closest point of a specified `position` to the perimeter of any Collider2D type.

 In the case where the `position` is inside the `Collider` or the `Collider` is disabled, then the input `position` is returned instead.

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position from which to find the closest point on the specified `rigidbody`. |
| rigidbody | The Rigidbody on which to find the closest specified `position`. |

### Returns

**Vector2** A point on the perimeter of a Collider attached to the `rigidbody` that is closest to the specified `position`.

### Description

Returns a point on the perimeter of all enabled Colliders attached to the `rigidbody` that is closest to the specified `position`.

This function provides the ability to calculate the closest point of a specified `position` to the perimeter of any enabled Collider2D type attached to the specified Rigidbody2D.

 In the case where the `position` is inside any of the enabled Collider2D attached to the `rigidbody`, the input `position` is returned instead.
