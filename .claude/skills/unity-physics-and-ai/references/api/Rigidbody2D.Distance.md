<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.Distance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| collider | A collider used to calculate the minimum distance against all colliders attached to this Rigidbody2D. |

### Returns

**ColliderDistance2D** The minimum distance of `collider` against all colliders attached to this Rigidbody2D.

### Description

Calculates the minimum distance of this `collider` against all Collider2D attached to this Rigidbody2D.

The provided `collider` will be check against all Collider2D attached to this Rigidbody2D and the minimum distance from all attached Collider2D will be returned.

The provided `collider` and at least one Collider2D attached to this Rigidbody2D must be valid for the returned ColliderDistance2D to be valid i.e. the Collider2D should not be disabled and must contain collision shapes and the provided `collider` must not be NULL. You can check if the returned value is valid by checking ColliderDistance2D.isValid.

Additional resources: Physics2D.Distance and Collider2D.Distance.

### Parameters

| Parameter | Description |
| --- | --- |
| thisPosition | The position to use for this Rigidbody. |
| thisAngle | The rotation to use for this Rigidbody. |
| collider | A collider used to calculate the minimum separation against this Rigidbody. |
| position | The position to use for the specified `collider`. |
| angle | The rotation to use for the specified `collider`. |

### Returns

**ColliderDistance2D** The minimum distance of `collider` against all colliders attached to this Rigidbody2D.

### Description

Calculates the minimum distance of this `collider` against all Collider2D attached to this Rigidbody2D.

The provided `collider` will be check against all Collider2D attached to this Rigidbody2D and the minimum distance from all attached Collider2D will be returned.

The provided `collider` and at least one Collider2D attached to this Rigidbody2D must be valid for the returned ColliderDistance2D to be valid i.e. the Collider2D should not be disabled and must contain collision shapes and the provided `collider` must not be NULL. You can check if the returned value is valid by checking ColliderDistance2D.isValid.

**NOTE**: The positions and angles used here represent the position of the Rigidbody2D the respective Collider2D is attached to. If the Collider2D is offset from the center of mass then the Collider2D will use the same offset. This can be confusing so it is recommened that only Collider2D that align with the center of mass are used. If not then you must take this into account. If the specified `collider` is not attached to a Rigidbody2D, this call cannot be used and will result in a warning.

Additional resources: Physics2D.Distance and Collider2D.Distance.
