<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.ClosestPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| point | Location you want to find the closest point to. |
| collider | The collider that you find the closest point on. |
| position | The position of the collider. |
| rotation | The rotation of the collider. |

### Returns

**Vector3** The point on the collider that is closest to the specified location.

### Description

Returns a point on the given collider that is closest to the specified location.

Note that in case the specified location is inside the collider, or exactly on the boundary of it, the input location is returned instead.

The collider can only be BoxCollider, SphereCollider, CapsuleCollider or a convex MeshCollider.

Additional resources: Collider.ClosestPoint.
