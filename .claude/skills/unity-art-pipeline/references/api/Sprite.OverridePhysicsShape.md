<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Sprite.OverridePhysicsShape.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| physicsShapes | A multidimensional list of points in Sprite.rect space denoting the physics shape outlines. |

### Description

Sets up a new Sprite physics shape.

The positions are in Sprite.rect space and this space is from Rect.zero to Rect.size. Pivot offset and transformation to unit space are done automatically. Values outside of the Rect bounds are valid and are transformed based on Sprite.rect space.

Each internal array of physics shape outlines must have more than 2 positions to be able to describe a shape.

Additional resources: Sprite.rect.
