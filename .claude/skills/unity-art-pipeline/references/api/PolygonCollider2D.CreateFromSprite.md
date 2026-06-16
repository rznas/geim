<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PolygonCollider2D.CreateFromSprite.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sprite | The sprite to extract the polygon shape data from. |
| detail | The detail used when tessellating the sprite outline, in the range [0, 1]. This is only used if the `sprite` doesn't already have its own PhysicsShape outline(s) or `usePhysicsShapes` is false. This value has the same meaning as the similarly named property in the Sprite Editor. |
| alphaTolerance | The alpha tolerance used to separate the sprite from its background, in the range [0, 255]. This is only used if the `sprite` doesn't already have its own PhysicsShape outline(s) or `usePhysicsShapes` is false. This value has the same meaning as the similarly named property in the Sprite Editor. |
| holeDetection | Selects whether internal holes should be detected when creating the sprite outlines. This is only used if the `sprite` doesn't already have its own PhysicsShape outline(s) or `usePhysicsShapes` is false. This value has the same meaning as the similarly named property in the Sprite Editor. |
| usePhysicsShapes | Selects whether the outline should use the PhysicsShape outline(s) defined in the `sprite`. If true, they are used (if available) however if false then they are never used even if available. |

### Returns

**bool** Returns `true` if the selected sprite resulted in polygon shapes being created. Returns `false` if not, in which case the Collider will be set to a default primitive shape.

### Description

Create polygon shapes using the selected sprite.

If the selected `sprite` already has its own PhysicShape(s) defined in the Sprite Editor then that outline will be tessellated into polygon shapes to be used here.

If the selected `sprite` does not have its own PhysicsShape(s) then a new outline will be created using the additional arguments provided. This takes additional time and in all cases, it is preferred that each Sprite has its own PhysicsShape(s) defined.

**NOTE**: If PhysicsShape(s) are not available in the Sprite and the additional arguments are used in a player build then the Sprite.texture must have read/write enabled in the importer so it is readable.

Additional resources: Sprite, Sprite.GetPhysicsShapeCount, Sprite.GetPhysicsShape and Sprite.GetPhysicsShapePointCount.
