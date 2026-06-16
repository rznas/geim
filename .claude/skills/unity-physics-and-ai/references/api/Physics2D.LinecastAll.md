<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.LinecastAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| start | The start point of the line in world space. |
| end | The end point of the line in world space. |
| layerMask | Filter to detect Colliders only on certain layers. |
| minDepth | Only include objects with a Z coordinate (depth) greater than or equal to this value. |
| maxDepth | Only include objects with a Z coordinate (depth) less than or equal to this value. |

### Returns

**RaycastHit2D[]** The cast results returned.

### Description

Casts a line against Colliders in the Scene.

A *linecast* is an imaginary line between two points in world space. Any object making contact with the beam can be detected and reported.

This function is similar to the Linecast function except that all Colliders that are in contact with the line are reported. The line is assumed to run from its start point to its end point; Colliders will be placed in the returned array in order of distance from the start of the line.

Linecasts are useful for determining lines of sight, targets hit by gunfire and for many other purposes in gameplay.

**Note:** This function allocates memory for the returned RaycastHit2D array. Use Linecast to avoid this overhead if you need to make linecasts frequently.

Additionally, this will also detect Collider(s) at the start of the line. In this case the line is starting inside the Collider and doesn't intersect the Collider surface. This means that the collision normal cannot be calculated in which case the collision normal returned is set to the inverse of the line vector being tested. This can easily be detected because such results are always at a RaycastHit2D fraction of zero.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: LayerMask class, RaycastHit2D class, Linecast, DefaultRaycastLayers, IgnoreRaycastLayer, raycastsHitTriggers.
