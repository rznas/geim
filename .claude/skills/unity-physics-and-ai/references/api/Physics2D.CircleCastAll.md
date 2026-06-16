<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.CircleCastAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The point in 2D space where the circle originates. |
| radius | The radius of the circle. |
| direction | A vector representing the direction of the circle. |
| distance | The maximum distance over which to cast the circle. |
| layerMask | Filter to detect Colliders only on certain layers. |
| minDepth | Only include objects with a Z coordinate (depth) greater than or equal to this value. |
| maxDepth | Only include objects with a Z coordinate (depth) less than or equal to this value. |

### Returns

**RaycastHit2D[]** The cast results returned.

### Description

Casts a circle against Colliders in the Scene, returning all Colliders that contact with it.

A *CircleCast* is conceptually like dragging a circle through the Scene in a particular direction. Any object making contact with the circle can be detected and reported.

This function is similar to the CircleCast function but instead of detecting just the first Collider that is hit, an array of all Colliders along the path of the circle is returned. The Colliders in the array are sorted in order of distance from the origin point. The *layerMask* can be used to detect objects selectively only on certain layers (this allows you to apply the detection only to enemy characters, for example).

The returned RaycastHit2D returns both the point and normal of the contact where the circle would touch the Collider. It also returns the centroid where the circle would be positioned for it to contact at that point.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: LayerMask class, RaycastHit2D class, CircleCast, DefaultRaycastLayers, IgnoreRaycastLayer, raycastsHitTriggers.
