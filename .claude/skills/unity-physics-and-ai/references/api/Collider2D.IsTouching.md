<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D.IsTouching.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| collider | The collider to check if it is touching this collider. |

### Returns

**bool** Whether this collider is touching the `collider` or not.

### Description

Check whether this collider is touching the `collider` or not.

It is important to understand that checking whether colliders are touching or not is performed against the last physics system update; that is the state of touching colliders at that time. If you have just added a new Collider2D or have moved a Collider2D but a physics update has not yet taken place then the colliders will not be shown as touching. This function returns the same collision results as the physics collision or trigger callbacks.

### Parameters

| Parameter | Description |
| --- | --- |
| collider | The collider to check if it is touching this collider. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |

### Returns

**bool** Whether this collider is touching the `collider` or not.

### Description

Check whether this collider is touching the `collider` or not with the results filtered by the `contactFilter`.

It is important to understand that checking whether colliders are touching or not is performed against the last physics system update; that is the state of touching colliders at that time. If you have just added a new Collider2D or have moved a Collider2D but a physics update has not yet taken place then the colliders will not be shown as touching. This function returns the same collision results as the physics collision or trigger callbacks.

### Parameters

| Parameter | Description |
| --- | --- |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |

### Returns

**bool** Whether this collider is touching the `collider` or not.

### Description

Check whether this collider is touching other colliders or not with the results filtered by the `contactFilter`.

It is important to understand that checking whether colliders are touching or not is performed against the last physics system update; that is the state of touching colliders at that time. If you have just added a new Collider2D or have moved a Collider2D but a physics update has not yet taken place then the colliders will not be shown as touching. This function returns the same collision results as the physics collision or trigger callbacks.
