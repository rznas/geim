<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.Editor.SVGImporter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The SVG importer class.

### Properties

| Property | Description |
| --- | --- |
| AdvancedMode | Use advanced settings. |
| Alignment | The SVG sprite alignement. |
| CustomPivot | The custom pivot, when alignement is "Custom". |
| FilterMode | The filter mode of the texture (only used when importing to a texture). |
| GeneratePhysicsShape | Automaticallly generates a physics shape. |
| GradientResolution | Maximum resolution for gradient texture. |
| KeepTextureAspectRatio | The size of the texture (only used when importing to a texture). |
| MaxCordDeviation | Distance on the cord to a straight line between two points after which more tessellation will be generated. |
| MaxCordDeviationEnabled | Enables the "max coord deviation" constraint. |
| MaxTangentAngle | Max tangent angle (in degrees) after which more tessellation will be generated. |
| MaxTangentAngleEnabled | Enables the "max tangent angle" constraint. |
| PredefinedResolutionIndex | The predefined resolution used, when not in advanced mode. |
| PreserveSVGImageAspect | When importing to an SVGImage, preserves the aspect ratio of the generated sprite. |
| ResolutionMultiplier | An additional scale factor on the target resolution. |
| SampleCount | The number of samples per pixel (only used when importing to a texture). |
| SamplingStepDistance | Number of samples evaluated on paths. |
| StepDistance | The uniform step distance used for tessellation. |
| SvgPixelsPerUnit | The number of pixels per Unity units. |
| SvgType | How the SVG file will be imported |
| TargetResolution | The target resolution on which this SVG is displayed. |
| TessellationMode | The serialization mode used when importing the SVG document. |
| TexturedSpriteMeshType | For textured sprite, the mesh type |
| TextureHeight | The height of the texture (only used when importing to a texture). |
| TextureSize | The size of the texture (only used when importing to a texture with "keep aspect ratio"). |
| TextureWidth | The width of the texture (only used when importing to a texture). |
| UseSVGPixelsPerUnit | When importing as a textured sprite asset, uses the SVG size to compute the pixels per unit. |
| ViewportOptions | Viewport options to use when importing the SVG document. |
| WrapMode | The wrap mode of the texture (only used when importing to a texture). |

### Public Methods

| Method | Description |
| --- | --- |
| OnImportAsset | Imports an SVG asset |

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
| SupportsRemappedAssetType | Override this method if your ScriptedImporter supports remapping specific asset types. |

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

### Messages

| Message | Description |
| --- | --- |
| GatherDependenciesFromSourceFile | A static callback that you can implement to set up artifact dependencies to other Assets, and optimize the order your assets are imported. |
| OnValidate | This function is called when the importer is loaded or a value is changed in the Inspector. |
| Reset | Reset to default values. |
