<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.RaycastAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The point in 2D space where the ray originates. |
| direction | A vector representing the direction of the ray. |
| distance | The maximum distance over which to cast the ray. |
| layerMask | Filter to detect Colliders only on certain layers. |
| minDepth | Only include objects with a Z coordinate (depth) greater than or equal to this value. |
| maxDepth | Only include objects with a Z coordinate (depth) less than or equal to this value. |

### Returns

**RaycastHit2D[]** The cast results returned.

### Description

Casts a ray against Colliders in the Scene, returning all Colliders that contact with it.

A *raycast* is conceptually like a laser beam that is fired from a point in space along a particular direction. Any object making contact with the beam can be detected and reported.

This function is similar to the Raycast function but instead of detecting just the first Collider that is hit, an array of all Colliders along the path of the ray is returned. The Colliders in the array are sorted in order of distance from the origin point. The *layerMask* can be used to detect objects selectively only on certain layers (this allows you to apply the detection only to enemy characters, for example).

Raycasts are useful for determining lines of sight, targets hit by gunfire and for many other purposes in gameplay.

Additionally, this will also detect Collider(s) at the start of the ray. In this case, the ray starts inside the Collider and doesn't intersect the Collider surface. This means that the collision normal cannot be calculated, in which case the returned collision normal is set to the inverse of the ray vector being tested. This can easily be detected because such results are always at a RaycastHit2D fraction of zero.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: LayerMask class, RaycastHit2D class, Raycast, Linecast, DefaultRaycastLayers, IgnoreRaycastLayer, raycastsHitTriggers.
