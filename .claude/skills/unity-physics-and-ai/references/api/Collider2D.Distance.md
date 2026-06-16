<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D.Distance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| collider | A collider used to calculate the minimum separation against this collider. |

### Returns

**ColliderDistance2D** The minimum separation of `collider` and this collider.

### Description

Calculates the minimum separation of this collider against another collider.

A valid `collider` must be provided for the ColliderDistance2D to be valid. If there are any problems with `collider` or this Collider2D such as they are disabled or do not contain any collision shapes then the separation will be invalid as indicated by ColliderDistance2D.isValid.

Additional resources: Physics2D.Distance and Rigidbody2D.Distance.

### Parameters

| Parameter | Description |
| --- | --- |
| thisPosition | The position to use for this Collider. |
| thisAngle | The rotation to use for this Collider. |
| collider | A collider used to calculate the minimum separation against this Collider. |
| position | The position to use for the specified `collider`. |
| angle | The rotation to use for the specified `collider`. |

### Returns

**ColliderDistance2D** The minimum separation of `collider` and this collider.

### Description

A valid `collider` must be provided for the ColliderDistance2D to be valid. If there are any problems with `collider` or this Collider2D such as they are disabled or do not contain any collision shapes then the separation will be invalid as indicated by ColliderDistance2D.isValid.

A valid `collider` must be provided for the ColliderDistance2D to be valid. If there are any problems with `collider` or this Collider2D such as they are disabled or do not contain any collision shapes then the separation will be invalid as indicated by ColliderDistance2D.isValid.

**NOTE**: The positions and angles used here represent the position of the Rigidbody2D the respective Collider2D is attached to. If the Collider2D is offset from the center of mass then the Collider2D will use the same offset. This can be confusing so it is recommened that only Collider2D that align with the center of mass are used. If not then you must take this into account. If the Collider2D is not attached to a Rigidbody2D, this call cannot be used and will result in a warning.

Additional resources: Physics2D.Distance and Rigidbody2D.Distance.
