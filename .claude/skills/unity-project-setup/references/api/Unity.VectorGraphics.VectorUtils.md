<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.VectorUtils.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides various tools to work with vector graphics.

### Static Properties

| Property | Description |
| --- | --- |
| Epsilon | A small value used everywhere by the vector graphics package. |

### Static Methods

| Method | Description |
| --- | --- |
| ApproximateSceneNodeBounds | Computes a rough approximation of the node hierarchy bounds. |
| BezierSegmentsToPath | Converts an array of BezierSegments into a connected path. |
| BezierSegmentToPath | Convert a segments into a path. |
| Bounds | Computes the bounds of a bezier path. |
| BuildRectangleContour | Builds a BezierContour from a Rectangle. |
| BuildSprite | Builds a sprite asset from a scene tessellation. |
| BuildVectorImage | Builds a sprite asset from a scene tessellation. |
| Eval | Evaluates the position on a curve segment. |
| EvalFull | Evalutes both the position and tangent on a curve segment. |
| EvalNormal | Evalutes the normal on a curve segment. |
| EvalTangent | Evaluates the tangent on a curve segment. |
| FillMesh | Fills a mesh geometry from a scene tessellation. |
| FillUVs | Fill the UVs of the geometry using the provided texture atlas. |
| FindBezierLineIntersections | Find the intersections (up to three) between a line and a curve segment. |
| FlipSegment | Flips a segment direction. |
| FlipVerticesInBounds | Flip the vertices (in-place) inside their axis-aligned bounding-box. |
| GenerateAtlas | Generates a Texture2D atlas containing the textures and gradients for the vector geometry. |
| GenerateAtlasAndFillUVs | Generates a Texture2D atlas containing the textures and gradients for the vector geometry, and fill the UVs of the geometry. |
| IntersectLines | Finds the intersection between two infinite lines |
| IntersectLineSegments | Finds the intersection between two line segments |
| MakeArc | Approximates a circle arc with up to 4 segments. |
| MakeCircleShape | Builds a circle shape. |
| MakeEllipseShape | Builds an ellipse shape. |
| MakeLine | Builds a line segment. |
| MakePathLine | Builds a line path segment. |
| MakeRectangleShape | Builds a rectangle shape. |
| PathEndsPerfectlyMatch | Checks if the two ends of a BezierPathSegment chain are at the same location. |
| PathSegmentAtIndex | Computes the BezierSegment at a given index from a list of BezierPathSegments. |
| QuadraticToCubic | Converts a quadratic bezier to a cubic bezier |
| RealignVerticesInBounds | Realigns the vertices (in-place) inside their axis-aligned bounding-box. |
| RenderSprite | Draws a vector sprite using the provided material. |
| RenderSpriteToTexture2D | Renders a vector sprite to Texture2D. |
| SceneNodeBounds | Computes a pretty accurate approximation of the scene bounds. |
| SceneNodes | Lists every nodes under a root node. |
| SegmentLength | Computes the length of a single curve segment. |
| SegmentsInPath | Iterates through every segment in a list of path segments. |
| SegmentsLength | Computes the combined length of a segment chain. |
| SegmentsLengths | Computes the individual lengths of a segment chain. |
| SplitSegment | Splits a curve segment at a given parametric location. |
| TessellatePath | Tessellates a path. |
| TessellateRect | Tessellates a rectangle. |
| TessellateRectBorder | Tessellates a rectangle border. |
| TessellateScene | Tessellates a Scene object into triangles. |
| TransformBezierPath | Transforms a path by a transformation matrix. |
| TransformSegment | Transforms a curve segment by a translation, rotation and scaling. |
| WorldTransformedSceneNodes | Iterates through every nodes under a root with computed transform and opacities. |
