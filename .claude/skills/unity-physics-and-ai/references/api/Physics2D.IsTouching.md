<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.IsTouching.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| collider1 | The Collider to check if it is touching `collider2`. |
| collider2 | The Collider to check if it is touching `collider1`. |

### Returns

**bool** Whether `collider1` is touching `collider2` or not.

### Description

Checks whether the passed Colliders are in contact or not.

It is important to understand that checking whether Colliders are touching or not is performed against the last physics engine update; that is the state of touching Colliders at that time. If you have just added a new Collider2D or have moved a Collider2D but a physics update has not yet taken place then the Colliders will not be shown as touching. This function returns the same collision results as the physics collision or trigger callbacks.

### Parameters

| Parameter | Description |
| --- | --- |
| Collider | The Collider to check if it is touching any other Collider filtered by the `contactFilter`. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |

### Returns

**bool** Whether the `Collider` is touching any other Collider filtered by the `contactFilter` or not.

### Description

Checks whether the passed Colliders are in contact or not.

It is important to understand that checking whether Colliders are touching or not is performed against the last physics engine update; that is the state of touching Colliders at that time. If you have just added a new Collider2D or have moved a Collider2D but a physics update has not yet taken place then the Colliders will not be shown as touching. This function returns the same collision results as the physics collision or trigger callbacks.

### Parameters

| Parameter | Description |
| --- | --- |
| collider1 | The Collider to check if it is touching `collider2`. |
| collider2 | The Collider to check if it is touching `collider1`. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |

### Returns

**bool** Whether `collider1` is touching `collider2` or not.

### Description

Checks whether the passed Colliders are in contact or not.

It is important to understand that checking whether Colliders are touching or not is performed against the last physics engine update; that is the state of touching Colliders at that time. If you have just added a new Collider2D or have moved a Collider2D but a physics update has not yet taken place then the Colliders will not be shown as touching. This function returns the same collision results as the physics collision or trigger callbacks.
