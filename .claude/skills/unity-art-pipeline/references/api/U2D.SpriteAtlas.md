<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/U2D.SpriteAtlas.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sprite Atlas is an asset created within Unity. It is part of the built-in sprite packing solution.

A Sprite Atlas stores a list of packable assets. A packable asset is either a Sprite, Texture2D of TextureImporterType.Sprite or Folder. Before the packing process begins, these packable assets will be grouped and traversed to gather all the sprites from them. These will be used in the packing process. At runtime, these sprites can be enumerated via the Sprite Atlas (Additional resources: SpriteAtlas.GetSprites).

It also provides dedicated texture settings in the inspector for the packed texture. The original texture settings of the sprite will have no effect on the packed texture.

By default, Sprite Atlas will be referenced by the sprite and be available at runtime. This means that the sprite will be able to acquire the packed texture from the Sprite Atlas when loaded. A Sprite can be loaded without referencing any Sprite Atlas. A Sprite loaded this way will render as invisible since there is no texture. A reference to a Sprite Atlas can be added later. Additional resources: SpriteAtlasManager.

Sprite Atlas variants can be created by assigning another Sprite Atlas object as the master. Variants will not repack a new texture from the packable list. Instead of this, variants will duplicate the master's packed texture and downscale it according to a user-defined ratio and save this scaled texture.

### Properties

| Property | Description |
| --- | --- |
| isVariant | Return true if this SpriteAtlas is a variant. |
| spriteCount | Get the total number of Sprite packed into this atlas. |
| tag | Get the tag of this SpriteAtlas. |

### Public Methods

| Method | Description |
| --- | --- |
| CanBindTo | Return true if Sprite is packed into this SpriteAtlas. |
| GetSprite | Clone the first Sprite in this atlas that matches the name packed in this atlas and return it. |
| GetSprites | Clone all the Sprite in this atlas and fill them into the supplied array. |

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
