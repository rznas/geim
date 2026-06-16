<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D.GetShapeBounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| bounds | The list used to store the returned Bounds. |
| useRadii | Whether the radius of each PhysicsShape2D should be used to calculate the Bounds or not. |
| useWorldSpace | Whether to transform all the returned Bounds to world space or leave them in their default local space. |

### Returns

**Bounds** Returns the combined Bounds of the retrieved list.

### Description

Retrieves a list of Bounds for all PhysicsShape2D created by this Collider2D, and returns the combined Bounds of the retrieved list.

Additional resources: Bounds, Collider2D.GetShapes and Collider2D.GetShapeHash.
