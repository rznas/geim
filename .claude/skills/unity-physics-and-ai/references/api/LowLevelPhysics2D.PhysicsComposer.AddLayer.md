<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsComposer.AddLayer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| geometry | The Circle Geometry to use. |
| transform | The transform to use on the geometry. |
| operation | The composer operation to use. |
| order | The order to perform the composer operation. |
| curveStride | The curve stride controls how many vertices are used to approximate the circle geometry. Lower values produce more vertices whereas larger values produce fewer vertices. The valid range is [PhysicsComposer.MinCurveStride, 1.0] although values over 0.3 tend to produce relatively poor results. |
| reverseWinding | Whether the winding should be reversed. Typically winding is generated anti-clockwise, reversed winding is therefore clockwise. |

### Returns

**LayerHandle** A handle to the new layer.

### Description

Add a Circle Geometry layer to the Physics Composer.

### Parameters

| Parameter | Description |
| --- | --- |
| geometry | The Circle Geometry to use. This geometry will be copied so the geometry the span is referring to can be disposed of afterwards if required. |
| transform | The transform to use on the geometry. |
| operation | The composer operation to use. |
| order | The order to perform the composer operation. |
| curveStride | The curve stride controls how many vertices are used to approximate the circle geometry. Lower values produce more vertices whereas larger values produce fewer vertices. The valid range is [PhysicsComposer.MinCurveStride, 1.0] although values over 0.3 tend to produce relatively poor results. |
| reverseWinding | Whether the winding should be reversed. Typically winding is generated anti-clockwise, reversed winding is therefore clockwise. |

### Returns

**LayerHandle** A handle to the new layer.

### Description

Add multiple Circle Geometry layer to the Physics Composer.

### Parameters

| Parameter | Description |
| --- | --- |
| geometry | The Capsule Geometry to use. |
| transform | The transform to use on the geometry. |
| operation | The composer operation to use. |
| order | The order to perform the composer operation. |
| curveStride | The curve stride controls how many vertices are used to approximate the curved end-caps of the capsule geometry. Lower values produce more vertices whereas larger values produce fewer vertices. The valid range is [PhysicsComposer.MinCurveStride, 1.0] although values over 0.3 tend to produce relatively poor results. |
| reverseWinding | Whether the winding should be reversed. Typically winding is generated anti-clockwise, reversed winding is therefore clockwise. |

### Returns

**LayerHandle** A handle to the new layer.

### Description

Add a Capsule Geometry layer to the Physics Composer.

### Parameters

| Parameter | Description |
| --- | --- |
| geometry | The Capsule Geometry to use. This geometry will be copied so the geometry the span is referring to can be disposed of afterwards if required. |
| transform | The transform to use on the geometry. |
| operation | The composer operation to use. |
| order | The order to perform the composer operation. |
| curveStride | The curve stride controls how many vertices are used to approximate the curved end-caps of the capsule geometry. Lower values produce more vertices whereas larger values produce fewer vertices. The valid range is [PhysicsComposer.MinCurveStride, 1.0] although values over 0.3 tend to produce relatively poor results. |
| reverseWinding | Whether the winding should be reversed. Typically winding is generated anti-clockwise, reversed winding is therefore clockwise. |

### Returns

**LayerHandle** A handle to the new layer.

### Description

Add multiple Capsule Geometry layer to the Physics Composer.

### Parameters

| Parameter | Description |
| --- | --- |
| geometry | The Polygon Geometry to use. |
| transform | The transform to use on the geometry. |
| operation | The composer operation to use. |
| order | The order to perform the composer operation. |
| curveStride | The curve stride is only used when a non-zero radius is used. It controls how many vertices are used to approximate the curved polygon geometry. Lower values produce more vertices whereas larger values produce fewer vertices. The valid range is [PhysicsComposer.MinCurveStride, 1.0] although values over 0.3 tend to produce relatively poor results. |
| reverseWinding | Whether the winding should be reversed. Typically winding is generated anti-clockwise, reversed winding is therefore clockwise. |

### Returns

**LayerHandle** A handle to the new layer.

### Description

Add a Polygon Geometry layer to the Physics Composer. Note that the physics composer will convert the polygon geometry into outlines (edges) approximating the geometry, therefore if the a non-zero radius is used, multiple edges are used for the radius meaning a single polygon geometry would not be returned if used as the only operation. when using Polygon Geometry with a non-zero radius, the composer will no longer see that as a single polygon but will instead convert the

### Parameters

| Parameter | Description |
| --- | --- |
| geometry | The Polygon Geometry to use. This geometry will be copied so the geometry the span is referring to can be disposed of afterwards if required. |
| transform | The transform to use on the geometry. |
| operation | The composer operation to use. |
| order | The order to perform the composer operation. |
| curveStride | The curve stride is only used when a non-zero radius is used. It controls how many vertices are used to approximate the curved polygon geometry. Lower values produce more vertices whereas larger values produce fewer vertices. The valid range is [PhysicsComposer.MinCurveStride, 1.0] although values over 0.3 tend to produce relatively poor results. |
| reverseWinding | Whether the winding should be reversed. Typically winding is generated anti-clockwise, reversed winding is therefore clockwise. |

### Returns

**LayerHandle** A handle to the new layer.

### Description

Add multiple Polygon Geometry layer to the Physics Composer. Note that the physics composer will convert the polygon geometry into outlines (edges) approximating the geometry, therefore if the a non-zero radius is used, multiple edges are used for the radius meaning a single polygon geometry would not be returned if used as the only operation.

### Parameters

| Parameter | Description |
| --- | --- |
| shape | The PhysicsShape to use. |
| transform | The transform to use on the geometry. |
| operation | The composer operation to use. |
| order | The order to perform the composer operation. |
| curveStride | The curve stride is used to approximately the curved geometry but is applied according to the specific shape geometry type. Lower values produce more vertices, larger values fewer vertices. The valid range is [PhysicsComposer.MinCurveStride, 1.0] although values over 0.3 tend to produce relatively poor results. |
| reverseWinding | Whether the winding should be reversed. Typically winding is generated anti-clockwise, reversed winding is therefore clockwise. |

### Returns

**LayerHandle** A handle to the new layer.

### Description

Add a PhysicsShape layer to the Physics Composer. Only PhysicsShape with a geometry of PhysicsShape.ShapeType.Circle, PhysicsShape.ShapeType.Capsule or PhysicsShape.ShapeType.Polygon will be used. All other types will be ignored.

### Parameters

| Parameter | Description |
| --- | --- |
| shapes | The PhysicsShapes to use. The geometry these shapes used will be copied so the geometry the span is referring to can changed afterwards if required. |
| transform | The transform to use on the geometry. |
| operation | The composer operation to use. |
| order | The order to perform the composer operation. |
| curveStride | The curve stride is used to approximately the curved geometry but is applied according to the specific shape geometry type. Lower values produce more vertices, larger values fewer vertices. The valid range is [PhysicsComposer.MinCurveStride, 1.0] although values over 0.3 tend to produce relatively poor results. |
| reverseWinding | Whether the winding should be reversed. Typically winding is generated anti-clockwise, reversed winding is therefore clockwise. |

### Returns

**LayerHandle** A handle to the new layer.

### Description

Add multiple PhysicsShape layer to the Physics Composer. Only PhysicsShape with a geometry of PhysicsShape.ShapeType.Circle, PhysicsShape.ShapeType.Capsule or PhysicsShape.ShapeType.Polygon will be used. All other types will be ignored.

### Parameters

| Parameter | Description |
| --- | --- |
| vertices | A span of vertices. This geometry will be copied so the geometry the span is referring to can be disposed of afterwards if required. |
| transform | The transform to use on the geometry. |
| operation | The composer operation to use. |
| order | The order to perform the composer operation. |
| reverseWinding | Whether the winding should be reversed. Typically winding is generated anti-clockwise, reversed winding is therefore clockwise. |

### Returns

**LayerHandle** A handle to the new layer.

### Description

Add a vertices layer to the Physics Composer.
