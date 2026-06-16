<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.Distance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| colliderA | A Collider used to calculate the minimum distance against `colliderB`. |
| colliderB | A Collider used to calculate the minimum distance against `colliderA`. |

### Returns

**ColliderDistance2D** The minimum distance between `colliderA` and `colliderB`.

### Description

Calculates the minimum distance between two Colliders.

A valid `colliderA` and `colliderB` must be provided for the returned ColliderDistance2D to be valid i.e. both `colliderA` or `colliderB` should not be NULL, should not be disabled and must contain collision shapes. You can check if the returned value is valid by checking ColliderDistance2D.isValid.

Additional resources: Collider2D.Distance and Rigidbody2D.Distance.

### Parameters

| Parameter | Description |
| --- | --- |
| colliderA | A Collider used to calculate the minimum distance against `colliderB`. |
| positionA | The position to use for `colliderA`. |
| angleA | The rotation to use for `colliderA`. |
| colliderB | A Collider used to calculate the minimum distance against `colliderA`. |
| positionB | The position to use for `colliderB`. |
| angleB | The rotation to use for `colliderB`. |

### Returns

**ColliderDistance2D** The minimum distance between `colliderA` and `colliderB`.

### Description

Calculates the minimum distance between two Colliders.

A valid `colliderA` and `colliderB` must be provided for the returned ColliderDistance2D to be valid i.e. both `colliderA` or `colliderB` should not be NULL, should not be disabled and must contain collision shapes. You can check if the returned value is valid by checking ColliderDistance2D.isValid.

**NOTE**: The positions and angles used here represent the position of the Rigidbody2D the respective Collider2D is attached to. If the Collider2D is offset from the center of mass then the Collider2D will use the same offset. This can be confusing so it is recommened that only Collider2D that align with the center of mass are used. If not then you must take this into account. If the Collider2D is not attached to a Rigidbody2D, this call cannot be used and will result in a warning.

Additional resources: Collider2D.Distance and Rigidbody2D.Distance.
