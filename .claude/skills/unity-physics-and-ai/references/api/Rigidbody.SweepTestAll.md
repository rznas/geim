<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.SweepTestAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| direction | The direction into which to sweep the rigidbody. |
| maxDistance | The length of the sweep. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**RaycastHit[]** An array of all colliders hit in the sweep.

### Description

Like Rigidbody.SweepTest, but returns all hits.

The sweep may return multiple hits against the same collider if more then one of the rigidbody's attached colliders would hit it.

Note that this function only works when a primitive collider type (sphere, cube or capsule) or a convex mesh is attached to the rigidbody object - concave mesh colliders will not work, although they can be detected in the Scene by the sweep.

This function can only return up to 128 hits.
