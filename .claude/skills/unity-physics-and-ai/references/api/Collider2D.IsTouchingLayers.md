<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D.IsTouchingLayers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| layerMask | Any colliders on any of these layers count as touching. |

### Returns

**bool** Whether this collider is touching any collider on the specified `layerMask` or not.

### Description

Checks whether this collider is touching any colliders on the specified `layerMask` or not.

It is important to understand that checking if colliders are touching or not is performed against the last physics system update i.e. the state of touching colliders at that time. If you have just added a new Collider2D or have moved a Collider2D but a physics update has not yet taken place then the colliders will not be shown as touching. The touching state is identical to that indicated by the physics collision or trigger callbacks.
