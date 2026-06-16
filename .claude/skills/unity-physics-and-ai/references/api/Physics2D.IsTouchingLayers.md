<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.IsTouchingLayers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| Collider | The Collider to check if it is touching Colliders on the `layerMask`. |
| layerMask | Any Colliders on any of these layers count as touching. |

### Returns

**bool** Whether the `Collider` is touching any Colliders on the specified `layerMask` or not.

### Description

Checks whether the `Collider` is touching any Colliders on the specified `layerMask` or not.

It is important to understand that checking if Colliders are touching or not is performed against the last physics engine update i.e. the state of touching Colliders at that time. If you have just added a new Collider2D or have moved a Collider2D but a physics update has not yet taken place then the Colliders will not be shown as touching. The touching state is identical to that indicated by the physics collision or trigger callbacks.
