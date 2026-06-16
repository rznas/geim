<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Tilemap stores Sprites in a layout marked by a Grid component.

### Properties

| Property | Description |
| --- | --- |
| animationFrameRate | The frame rate for all Tile animations in the Tilemap. |
| cellBounds | Returns the boundaries of the Tilemap in cell size. |
| color | The color of the Tilemap layer. |
| editorPreviewOrigin | The origin of the Tilemap in cell position inclusive of editor preview Tiles. |
| editorPreviewSize | The size of the Tilemap in cells inclusive of editor preview Tiles. |
| layoutGrid | Gets the Grid associated with this Tilemap. |
| localBounds | Returns the boundaries of the Tilemap in local space size. |
| orientation | Orientation of the Tiles in the Tilemap. |
| orientationMatrix | Orientation Matrix of the orientation of the Tiles in the Tilemap. |
| origin | The origin of the Tilemap in cell position. |
| size | The size of the Tilemap in cells. |
| tileAnchor | Gets the anchor point of Tiles in the Tilemap. |

### Public Methods

| Method | Description |
| --- | --- |
| AddTileAnimationFlags | Adds the TileAnimationFlags onto the Tile at the given position. |
| AddTileFlags | Adds the TileFlags onto the Tile at the given position. |
| BoxFill | Does a box fill with the given Tile on the Tilemap. Starts from given coordinates and fills the limits from start to end (inclusive). |
| ClearAllEditorPreviewTiles | Clears all editor preview Tiles that are placed in the Tilemap. |
| ClearAllTiles | Clears all Tiles that are placed in the Tilemap. |
| CompressBounds | Compresses the origin and size of the Tilemap to bounds where Tiles exist. |
| ContainsTile | Returns true if the Tilemap contains the given Tile. Returns false if not. |
| DeleteCells | Removes cells from within the Tilemap's bounds. |
| EditorPreviewBoxFill | Does an editor preview of a box fill with the given Tile on the Tilemap. Starts from given coordinates and fills the limits from start to end (inclusive). |
| EditorPreviewFloodFill | Does an editor preview of a flood fill with the given Tile to place. on the Tilemap starting from the given coordinates. |
| FloodFill | Does a flood fill with the given Tile to place. on the Tilemap starting from the given coordinates. |
| GetAnimationFrame | Retrieves the current animation frame for a Tile at the given position. |
| GetAnimationFrameCount | Retrieves the number of animation frames for a Tile at the given position. |
| GetAnimationTime | Retrieves the current running animation time for a Tile at the given position. |
| GetCellCenterLocal | Gets the logical center coordinate of a Grid cell in local space. The logical center for a cell of the Tilemap is defined by the Tile Anchor of the Tilemap. |
| GetCellCenterWorld | Gets the logical center coordinate of a Grid cell in world space. The logical center for a cell of the Tilemap is defined by the Tile Anchor of the Tilemap. |
| GetColliderType | Gets the Collider type of a Tile given the XYZ coordinates of a cell in the Tilemap. |
| GetColor | Gets the Color of a Tile given the XYZ coordinates of a cell in the Tilemap. |
| GetEditorPreviewColor | Gets the Color of an editor preview Tile given the XYZ coordinates of a cell in the Tilemap. |
| GetEditorPreviewSprite | Gets the Sprite used in an editor preview Tile given the XYZ coordinates of a cell in the Tilemap. |
| GetEditorPreviewTile | Gets the editor preview Tile at the given XYZ coordinates of a cell in the Tilemap. |
| GetEditorPreviewTileEntityId | Gets the EntityId of the editor preview Tile at the given xyz coordinates of a cell in the Tilemap. |
| GetEditorPreviewTileFlags | Gets the TileFlags of the editor preview Tile at the given position. |
| GetEditorPreviewTransformMatrix | Gets the transform matrix of an editor preview Tile given the XYZ coordinates of a cell in the Tilemap. |
| GetInstantiatedObject | Gets the GameObject instantiated by a Tile given the XYZ coordinates of a cell in the Tilemap. |
| GetObjectToInstantiate | Gets the GameObject which will be instantiated by a Tile given the XYZ coordinates of a cell in the Tilemap. |
| GetSprite | Gets the Sprite used in a Tile given the XYZ coordinates of a cell in the Tilemap. |
| GetTile | Gets the Tile at the given XYZ coordinates of a cell in the Tilemap. |
| GetTileAnimationFlags | Gets the TileAnimationFlags of the Tile at the given position. |
| GetTileEntityId | Gets the EntityId of the Tile at the given xyz coordinates of a cell in the Tilemap. |
| GetTileEntityIdsFromBlockOffset | Gets a block of EntityIds at an offset from the position and stores them into the given array of EntityIds in the same order. |
| GetTileEntityIdsFromOffsets | Gets an array of EntityIds at an offset from the position and stores them into the given array of EntityIds in the same order. |
| GetTileFlags | Gets the TileFlags of the Tile at the given position. |
| GetTiles | Retrieves all tiles within the given bounds as a TileArray. |
| GetTilesBlock | Retrieves an array of Tiles with the given bounds. |
| GetTilesBlockNonAlloc | Retrieves an array of Tiles with the given bounds. |
| GetTilesRangeCount | Retrieves the number of Tiles within the given range, inclusive of the Cells at both the starting position and the ending positions. This method begins at the given starting position and iterates through all available Z Positions, then iterates through the X and Y positions until it reaches the ending position. |
| GetTilesRangeNonAlloc | Retrieves an array of Tiles within the given range, inclusive of the Cells at both the starting position and the ending positions. This method begins at the given starting position and iterates through all available Z Positions, then iterates through the X and Y positions until it reaches the ending position. |
| GetTransformMatrix | Gets the transform matrix of a Tile given the XYZ coordinates of a cell in the Tilemap. |
| GetUsedSprites | Returns a SpriteArray containing the unique Sprite instances used in the Tilemap. The array is allocated using the given Allocator. |
| GetUsedSpritesCount | Gets the total number of different Sprites used in the Tilemap. |
| GetUsedSpritesNonAlloc | Fills the given array with the total number of different Sprites used in the Tilemap and returns the number of Sprites filled. |
| GetUsedTiles | Returns a TileArray containing the unique Tile instances used in this Tilemap. The array is allocated using the given Allocator. |
| GetUsedTilesCount | Gets the total number of different Tiles used in the Tilemap. |
| GetUsedTilesNonAlloc | Fills the given array with the total number of different Tiles used in the Tilemap and returns the number of Tiles filled. |
| HasEditorPreviewTile | Returns whether there is an editor preview Tile at the position. |
| HasTile | Returns whether there is a Tile at the position. |
| InsertCells | Inserts cells into the Tilemap. |
| RefreshAllTiles | Refreshes all Tiles in the Tilemap. The Tilemap will retrieve the rendering data, animation data and other data for all tiles and update all relevant components. |
| RefreshTile | Refreshes a Tile at the given XYZ coordinates of a cell in the Tilemap. |
| RemoveTileAnimationFlags | Removes the TileAnimationFlags from the Tile at the given position. |
| RemoveTileFlags | Removes the TileFlags from the Tile at the given position. |
| ResizeBounds | Resizes Tiles in the Tilemap to bounds defined by origin and size. |
| SetAnimationFrame | Sets the current animation frame for a Tile at the given position. |
| SetAnimationTime | Sets the running animation time for a Tile at the given position. |
| SetColliderType | Sets the Collider type of a Tile given the XYZ coordinates of a cell in the Tilemap. |
| SetColor | Sets the color of a Tile given the XYZ coordinates of a cell in the Tilemap. |
| SetEditorPreviewColor | Sets the color of an editor preview Tile given the XYZ coordinates of a cell in the Tilemap. |
| SetEditorPreviewTile | Sets an editor preview Tile given the XYZ coordinates of a cell in the Tilemap. |
| SetEditorPreviewTransformMatrix | Sets the transform matrix of an editor preview Tile given the XYZ coordinates of a cell in the Tilemap. |
| SetTile | Sets a Tile at the given XYZ coordinates of a cell in the Tilemap. |
| SetTileAnimationFlags | Sets the TileAnimationFlags onto the Tile at the given position. |
| SetTileFlags | Sets the TileFlags onto the Tile at the given position. |
| SetTiles | Sets an array of Tiles at the given XYZ coordinates of the corresponding cells in the Tilemap. |
| SetTilesBlock | Fills bounds with array of Tiles. |
| SetTransformMatrix | Sets the transform matrix of a Tile given the XYZ coordinates of a cell in the Tilemap. |
| SwapTile | Swaps all existing Tiles of changeTile to newTile and refreshes all the swapped Tiles. |

### Events

| Event | Description |
| --- | --- |
| loopEndedForTileAnimation | Callback when Tiles on a Tilemap have reached the end of their loop for their Tile Animation. |
| tilemapPositionsChanged | Callback when Tiles on a Tilemap have changed. |
| tilemapTileChanged | Callback when Tiles on a Tilemap have changed. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| enabled | Enabled Behaviours are Updated, disabled Behaviours are not. |
| isActiveAndEnabled | Checks whether a component is enabled, attached to a GameObject that is active in the hierarchy, and the component's OnEnable has been called. |
| gameObject | The game object this component is attached to. A component is always attached to a game object. |
| tag | The tag of this game object. |
| transform | The Transform attached to this GameObject. |
| transformHandle | The TransformHandle of this GameObject. |
| cellGap | The size of the gap between each cell in the layout. |
| cellLayout | The layout of the cells. |
| cellSize | The size of each cell in the layout. |
| cellSwizzle | The cell swizzle for the layout. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| BroadcastMessage | Calls the method named methodName on every MonoBehaviour in this game object or any of its children. |
| CompareTag | Checks the GameObject's tag against the defined tag. |
| GetComponent | Gets a reference to a component of type T on the same GameObject as the component specified. |
| GetComponentInChildren | Gets a reference to a component of type T on the same GameObject as the component specified, or any child of the GameObject. |
| GetComponentIndex | Gets the index of the component on its parent GameObject. |
| GetComponentInParent | Gets a reference to a component of type T on the same GameObject as the component specified, or any parent of the GameObject. |
| GetComponents | Gets references to all components of type T on the same GameObject as the component specified. |
| GetComponentsInChildren | Gets references to all components of type T on the same GameObject as the component specified, and any child of the GameObject. |
| GetComponentsInParent | Gets references to all components of type T on the same GameObject as the component specified, and any parent of the GameObject. |
| SendMessage | Calls the method named methodName on every MonoBehaviour in this game object. |
| SendMessageUpwards | Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour. |
| TryGetComponent | Gets the component of the specified type, if it exists. |
| CellToLocal | Converts a cell position to local position space. |
| CellToLocalInterpolated | Converts an interpolated cell position in floats to local position space. |
| CellToWorld | Converts a cell position to world position space. |
| GetBoundsLocal | Returns the local bounds for a cell at the location. |
| GetLayoutCellCenter | Get the default center coordinate of a cell for the set layout of the Grid. |
| LocalToCell | Converts a local position to cell position. |
| LocalToCellInterpolated | Converts a local position to cell position. |
| LocalToWorld | Converts a local position to world position. |
| WorldToCell | Converts a world position to cell position. |
| WorldToLocal | Converts a world position to local position. |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
