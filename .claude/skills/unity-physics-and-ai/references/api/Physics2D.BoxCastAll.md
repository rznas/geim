<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.BoxCastAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The point in 2D space where the box originates. |
| size | The size of the box. |
| angle | The angle of the box (in degrees). |
| direction | A vector representing the direction of the box. |
| distance | The maximum distance over which to cast the box. |
| layerMask | Filter to detect Colliders only on certain layers. |
| minDepth | Only include objects with a Z coordinate (depth) greater than or equal to this value. |
| maxDepth | Only include objects with a Z coordinate (depth) less than or equal to this value. |

### Returns

**RaycastHit2D[]** The cast results returned.

### Description

Casts a box against Colliders in the Scene, returning all Colliders that contact with it.

A *BoxCast* is conceptually like dragging a box through the Scene in a particular direction. Any object making contact with the box can be detected and reported.

This function is similar to the BoxCast function but instead of detecting just the first Collider that is hit, an array of all Colliders along the path of the box is returned. The Colliders in the array are sorted in order of distance from the origin point. The *layerMask* can be used to detect objects selectively only on certain layers (this allows you to apply the detection only to enemy characters, for example).

The returned RaycastHit2D returns both the point and normal of the contact where the box would touch the Collider. It also returns the centroid where the box would be positioned for it to contact at that point.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: LayerMask class, RaycastHit2D class, BoxCast, DefaultRaycastLayers, IgnoreRaycastLayer, raycastsHitTriggers.
