<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The context for a paint operation that may span multiple connected Terrain tiles.

This class is used to apply an edit operation to an area of Terrain that may span multiple Terrain tiles. A PaintContext may be used to edit heightmap or splatmap data, and may also be used to gather normal data in read-only mode (you cannot write to normals, because they are derived from the heightmap).
 
 A PaintContext will calculate the relevant regions on each Terrain, and collect the original data into a single sourceRenderTarget. Your edit operation can then read from sourcerenderTarget, and write the modified data to destinationRenderTarget. Once you have applied your edit operation, the PaintContext can also write the modified data in destinationRenderTarget back to each Terrain, ensuring no seams between them.
 
 The simplest way to use a PaintContext is through the helper functions in TerrainPaintUtility:
 TerrainPaintUtility.BeginPaintHeightmap, TerrainPaintUtility.EndPaintHeightmap, TerrainPaintUtility.BeginPaintTexture, TerrainPaintUtility.EndPaintTexture, TerrainPaintUtility.CollectNormals and TerrainPaintUtility.ReleaseContextResources.
 
 You can also use PaintContext more directly through its member functions. In general, they are used in the following order:
 1) Constructor, PaintContext.CreateFromBounds - Construct a PaintContext with a target Terrain and a region to edit
 2) PaintContext.CreateRenderTargets - Create the source and destination RenderTargets
 3) PaintContext.GatherHeightmap, PaintContext.GatherAlphamap, PaintContext.GatherNormals - Read from Terrain tiles into sourceRenderTarget
 4) Apply editing operations, reading from sourceRenderTarget, and writing to destinationRenderTarget
 5) PaintContext.ScatterHeightmap, PaintContext.ScatterAlphamap - Write from destinationRenderTarget into Terrain tiles (optional)
 6) PaintContext.Cleanup - Destroy RenderTarget resources (required if you call CreateRenderTargets)
 7) PaintContext.ApplyDelayedActions - Apply any delayed actions that perform expensive updates


 Additional resources: TerrainPaintTool<T0>

### Static Properties

| Property | Description |
| --- | --- |
| kNormalizedHeightScale | Unity uses this value internally to transform a [0, 1] height value to a texel value, which is stored in TerrainData.heightmapTexture. |

### Properties

| Property | Description |
| --- | --- |
| destinationRenderTexture | (Read Only) RenderTexture that an edit operation writes to modify the data. |
| heightWorldSpaceMin | The minimum height of all Terrain tiles that this PaintContext touches in world space. |
| heightWorldSpaceSize | The height range (from Min to Max) of all Terrain tiles that this PaintContext touches in world space. |
| oldRenderTexture | (Read Only) The value of RenderTexture.active at the time CreateRenderTargets is called. |
| originTerrain | (Read Only) The Terrain used to build the PaintContext. |
| pixelRect | (Read Only) The pixel rectangle that this PaintContext represents. |
| pixelSize | (Read Only) The size of a PaintContext pixel in terrain units (as defined by originTerrain.) |
| sourceRenderTexture | (Read Only) Render target that stores the original data from the Terrain tiles. |
| targetTextureHeight | (Read Only) The height of the target terrain texture. This is the resolution for a single Terrain. |
| targetTextureWidth | (Read Only) The width of the target terrain texture. This is the resolution for a single Terrain. |
| terrainCount | (Read Only) The number of Terrain tiles in this PaintContext. |

### Constructors

| Constructor | Description |
| --- | --- |
| PaintContext | Creates a new PaintContext, to edit a target texture on a Terrain, in a region defined by pixelRect. |

### Public Methods

| Method | Description |
| --- | --- |
| Cleanup | Releases the allocated resources of this PaintContext. |
| CreateRenderTargets | Creates the sourceRenderTexture and destinationRenderTexture. |
| Gather | Gathers user-specified Texture data into sourceRenderTexture. |
| GatherAlphamap | Gathers the alphamap information into sourceRenderTexture. |
| GatherHeightmap | Gathers the heightmap information into sourceRenderTexture. |
| GatherHoles | Gathers the Terrain holes information into sourceRenderTexture. |
| GatherNormals | Gathers the normal information into sourceRenderTexture. |
| GetClippedPixelRectInRenderTexturePixels | Retrieves the clipped pixel rectangle for a Terrain, relative to the PaintContext render textures. |
| GetClippedPixelRectInTerrainPixels | Retrieves the clipped pixel rectangle for a Terrain. |
| GetTerrain | Retrieves a Terrain from the PaintContext. |
| Scatter | Applies an edited PaintContext by copying modifications back to user-specified RenderTextures for the source Terrain tiles. |
| ScatterAlphamap | Applies an edited alphamap PaintContext by copying modifications back to the source Terrain tiles. |
| ScatterHeightmap | Applies an edited heightmap PaintContext by copying modifications back to the source Terrain tiles. |
| ScatterHoles | Applies an edited Terrain holes PaintContext by copying modifications back to the source Terrain tiles. |

### Static Methods

| Method | Description |
| --- | --- |
| ApplyDelayedActions | Flushes the delayed actions created by PaintContext heightmap and alphamap modifications. |
| CreateFromBounds | Constructs a PaintContext that you can use to edit a texture on a Terrain, in the region defined by boundsInTerrainSpace and extraBorderPixels. |
