<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A set of utility functions for custom terrain paint tools.

### Static Methods

| Method | Description |
| --- | --- |
| BeginPaintHeightmap | Helper function to set up a PaintContext for modifying the heightmap of one or more Terrain tiles. |
| BeginPaintHoles | Helper function to set up a PaintContext for modifying the Terrain holes of one or more Terrain tiles. |
| BeginPaintTexture | Helper function to set up a PaintContext for modifying the alphamap of one or more Terrain tiles. |
| BuildTransformPaintContextUVToPaintContextUV | Builds a Scale & Offset transform to convert between one PaintContext's UV space and another PaintContext's UV space. |
| CalculateBrushTransform | Creates a BrushTransform from the input parameters. |
| CollectNormals | Helper function to set up a PaintContext that collects mesh normal data from one or more Terrain tiles. |
| EndPaintHeightmap | Helper function to complete a heightmap modification. |
| EndPaintHoles | Helper function to complete a Terrain holes modification. |
| EndPaintTexture | Helper function to complete a texture alphamap modification. |
| FindTerrainLayerIndex | Finds the index of a TerrainLayer in a Terrain tile. |
| GetBlitMaterial | Returns the default material for blitting operations. |
| GetBrushWorldSizeLimits | Calculates the minimum and maximum Brush size limits, in world space. |
| GetBuiltinPaintMaterial | Returns the built-in in paint material used by the built-in tools. |
| GetCopyTerrainLayerMaterial | Returns the default copy terrain layer material. |
| GetHeightBlitMaterial | Returns the Material to use when copying the Terrain heightmap. |
| GetTerrainAlphaMapChecked | Returns the alphamap texture at mapIndex. |
| ReleaseContextResources | Releases the allocated resources of the specified PaintContext. |
| SetupTerrainToolMaterialProperties | Sets up all of the material properties used by functions in TerrainTool.cginc. |
