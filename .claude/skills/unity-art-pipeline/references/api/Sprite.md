<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Sprite.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a Sprite object for use in 2D gameplay.

*Sprites* are 2D graphic objects used for characters, props, projectiles and other elements of 2D gameplay. The graphics are obtained from bitmap images - Texture2D. The Sprite class primarily identifies the section of the image that should be used for a specific Sprite. This information can then be used by a SpriteRenderer component on a GameObject to actually display the graphic.

Additional resources: SpriteRenderer class.

### Properties

| Property | Description |
| --- | --- |
| associatedAlphaSplitTexture | Returns the Texture that contains the alpha channel from the source Texture. Unity generates this Texture under the hood for Sprites that have alpha in the source, and need to be compressed using techniques like ETC1.Returns NULL if there is no associated alpha Texture for the source Sprite. This is the case if the Sprite has not been setup to use ETC1 compression. |
| border | Returns the border sizes of the Sprite. |
| bounds | Bounds of the Sprite, specified by its center and extents in world space units. |
| packed | Returns true if this Sprite is packed in an atlas. |
| packingMode | If Sprite is packed (see Sprite.packed), returns its SpritePackingMode. |
| packingRotation | If Sprite is packed (see Sprite.packed), returns its SpritePackingRotation. |
| pivot | Location of the Sprite's pivot point in the Rect on the original Texture, specified in pixels. |
| pixelsPerUnit | The number of pixels in the Sprite that correspond to one unit in world space. (Read Only) |
| rect | Location of the Sprite on the original Texture, specified in pixels. |
| spriteAtlasTextureScale | The Variant scale of Texture used by the Sprite. This is useful to check when a Variant SpriteAtlas is being used by Sprites. |
| texture | Get the reference to the used Texture. If packed this will point to the atlas, if not packed will point to the source Sprite. |
| textureRect | Get the rectangle this Sprite uses on its Texture. Raises an exception if this Sprite is tightly packed in an atlas. |
| textureRectOffset | Gets the offset of the rectangle this Sprite uses on its Texture to the original Sprite bounds. If Sprite mesh type is FullRect, offset is zero. |
| triangles | Returns a copy of the array containing Sprite mesh triangles. |
| uv | The base Texture coordinates of the Sprite mesh. |
| vertices | Returns a copy of the array containing Sprite mesh vertex positions. |

### Public Methods

| Method | Description |
| --- | --- |
| AddScriptableObject | Adds a ScriptableObject reference to the sprite. |
| GetPhysicsShape | Gets a physics shape from the Sprite by its index. |
| GetPhysicsShapeCount | The number of physics shapes for the Sprite. |
| GetPhysicsShapePointCount | Retrieves the number of points in the selected physics shape for the sprite. |
| GetScriptableObjects | Retrieves an array of ScriptableObject referenced by the sprite. |
| GetScriptableObjectsCount | Gets the number of ScriptableObject that the sprite references. |
| GetSecondaryTextureCount | Gets the number of Secondary Textures that the Sprite is using. |
| GetSecondaryTextures | Retrieves an array of SecondarySpriteTexture used by the Sprite. |
| OverrideGeometry | Sets up new Sprite geometry. |
| OverridePhysicsShape | Sets up a new Sprite physics shape. |
| RemoveScriptableObjectAt | Removes the ScriptableObject reference from the sprite. |
| SetScriptableObjectAt | Replace the ScriptableObject reference from the sprite. |

### Static Methods

| Method | Description |
| --- | --- |
| Create | Create a new Sprite object. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
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
