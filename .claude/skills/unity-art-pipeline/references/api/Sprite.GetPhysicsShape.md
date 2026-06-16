<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Sprite.GetPhysicsShape.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shapeIdx | The index of the physics shape to retrieve. |

### Returns

**ReadOnlySpan<Vector2>** The physics shape as a span of vertices. It is recommended that you immediately extract what information you need and not directly reference the returned data as any subsequent change to the physics shape(s) could result in a crash when iterating the span.

### Description

Gets a physics shape from the Sprite by its index.

A *physics shape* is a cyclic sequence of line segments between points that define the outline of the Sprite used for physics. Since the Sprite can have holes and discontinuous parts, its outline is not necessarily defined by a single physics shape.

### Parameters

| Parameter | Description |
| --- | --- |
| shapeIdx | The index of the physics shape to retrieve. |
| physicsShape | An ordered list of the points in the selected physics shape to store points in. |

### Returns

**int** The number of points stored in the given list.

### Description

Gets a physics shape from the Sprite by its index.

A *physics shape* is a cyclic sequence of line segments between points that define the outline of the Sprite used for physics. Since the Sprite can have holes and discontinuous parts, its outline is not necessarily defined by a single physics shape.
