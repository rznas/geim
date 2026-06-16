<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TrueTypeFontImporter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

AssetImporter for importing Fonts.

### Properties

| Property | Description |
| --- | --- |
| ascentCalculationMode | Calculation mode for determining font's ascent. |
| characterPadding | Border pixels added to character images for padding. This is useful if you want to render text using a shader which needs to render outside of the character area (like an outline shader). |
| characterSpacing | Spacing between character images in the generated texture in pixels. This is useful if you want to render text using a shader which samples pixels outside of the character area (like an outline shader). |
| customCharacters | A custom set of characters to be included in the Font Texture. |
| fontNames | An array of font names, to be used when includeFontData is set to false. |
| fontReferences | References to other fonts to be used looking for fallbacks. |
| fontRenderingMode | Font rendering mode to use for this font. |
| fontSize | Font size to use for importing the characters. |
| fontTextureCase | Use this to adjust which characters should be imported. |
| fontTTFName | The internal font name of the TTF file. |
| includeFontData | If this is enabled, the actual font will be embedded into the asset for Dynamic fonts. |
| shouldRoundAdvanceValue | Set this property to true if you want to round the internal advance width of the font to the nearest integer. |

### Public Methods

| Method | Description |
| --- | --- |
| GenerateEditableFont | Create an editable copy of the font asset at path. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| assetBundleName | Get or set the AssetBundle name. |
| assetBundleVariant | Get or set the AssetBundle variant. |
| assetPath | The path name of the asset for this importer. (Read Only) |
| importSettingsMissing | The value is true when no meta file is provided with the imported asset. |
| userData | Get or set any user data. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| AddRemap | Map a sub-asset from an imported asset (such as an FBX file) to an external Asset of the same type. |
| GetExternalObjectMap | Gets a copy of the external object map used by the AssetImporter. |
| RemoveRemap | Removes an item from the map of external objects. |
| SaveAndReimport | Save asset importer settings if asset importer is dirty. |
| SetAssetBundleNameAndVariant | Set the AssetBundle name and variant. |
| SupportsRemappedAssetType | Checks if the AssetImporter supports remapping the given asset type. |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| GetAtPath | Retrieves the asset importer for the asset at path. |
| GetImportLog | Retrieves logs generated during the import of the asset at path. |
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
