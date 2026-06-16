<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsComposer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides the ability to compose geometry using specific operations on layers in a specific order.

### Static Properties

| Property | Description |
| --- | --- |
| DefaultCurveStride | The default curve stride used when composing geometry that has a non-zero radius. |
| MinCurveStride | The minimum curve stride allowed when composing geometry that has a non-zero radius. |

### Properties

| Property | Description |
| --- | --- |
| isValid | Check if a Physics Composer is valid. |
| layerCount | Get the number of layers currently added to the Physics Composer. |
| layerHandles | Get the layer handles added to the Physics Composer. |
| maxPolygonVertices | Get/Set the maximum number of polygon vertices to be used when composing polygon output. This should be in the range of 3 to PhysicsConstants.MaxPolygonVertices. The default is PhysicsConstants.MaxPolygonVertices. |
| rejectedGeometryCount | Get the number of geometries that were rejected during the last Geometry Composition. Geometry can be rejected for a number of reasons such as vertices being collinear or too close etc. Whilst "pure" geometry is always valid, this geometry is meant to be used by physics which has constraints on what it can accept. All geometry successfully created will always be valid when used by physics. If you notice thin/small gaps in the composition, this is likely to be rejected geometry. Checking this property will help determine that. |
| useDelaunay | Get/Set if Delaunay tessellation is to be used. Delaunay tessellation is enabled by default and produces far superior results. When Delaunay tessellation is disabled, curved areas can produce invalid geometry which is rejected therefore increase the rejectedGeometryCount. |

### Public Methods

| Method | Description |
| --- | --- |
| AddLayer | Add a Circle Geometry layer to the Physics Composer. |
| ClearLayers | Remove all layers from the Physics Composer. |
| CreateChainGeometry | Create ChainGeometry from the composition by iterating all the layers added to the composition in the layer order specified, applying each operation specified. A limit is imposed on small vertex distances so be aware that this overload uses a vertex scale of Vector2.one so consider using the overload which allows you to increase this if required. |
| CreateConvexHulls | Create ConvexHull from the composition by iterating all the layers added to the composition in the layer order specified, applying each operation specified. A default vertex scale of Vector2.one is used here. |
| CreatePolygonGeometry | Create PolygonGeometry from the composition by iterating all the layers added to the composition in the layer order specified, applying each operation specified. A limit is imposed on small vertex distances so be aware that this overload uses a vertex scale of Vector2.one so consider using the overload which allows you to increase this if required. |
| Destroy | Destroy the Physics Composer. |
| Dispose | Dispose of the composer. This simply calls PhysicsComposer.Destroy. |
| GetGeometryIslands | Get the geometry islands from a previous polygon geometry composition i.e. a call to PhysicsComposer.CreatePolygonGeometry or PhysicsComposer.CreateConvexHulls. Each generated polygon or convex-hull belongs to a unique island defining a set of polygons that are connected together as they share edges. The array returned contains a series of ranges where each range is a unique connected island where the range indicates both the start index and length of the original polygon indices. The number of discovered unique islands is defined by the size of the returned array. |
| RemoveLayer | Remove a layer from the Physics Composer. |

### Static Methods

| Method | Description |
| --- | --- |
| Create | Create a Physics Composer. NOTE: The composer implements System.IDisposable which allows you to use the "using" statement on the returned composer object to ensure it's disposed in the current scope which is only useful when using the Allocator.Temp allocator. However, because the composer is a struct, System.IDisposable will not be called automatically so in this case disposing or simply calling PhysicsComposer.Destroy must be done explicitly. |
| DestroyAll | Destroy all active Physics Composer. |
| GetComposers | Get all the currently active composers. |
| ToPolygons | Creates multiple PolygonGeometry from the specified geometry. A limit is imposed on small vertex distances so it is recommended that the geometry is scaled appropriately rather than on the returned geometry so geometry is not discarded due to it being invalid. |
