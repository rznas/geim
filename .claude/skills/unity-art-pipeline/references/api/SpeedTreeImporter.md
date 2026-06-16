<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SpeedTreeImporter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

AssetImporter for importing SpeedTree model assets.

### Static Properties

| Property | Description |
| --- | --- |
| windQualityNames | Gets an array of name strings for wind quality value. |

### Properties

| Property | Description |
| --- | --- |
| alphaTestRef | Gets and sets a default alpha test reference values. |
| animateCrossFading | Indicates if the cross-fade LOD transition, applied to the last mesh LOD and the billboard, should be animated. |
| bestWindQuality | Returns the best-possible wind quality on this asset (configured in SpeedTree modeler). |
| billboardTransitionCrossFadeWidth | Proportion of the last 3D mesh LOD region width which is used for cross-fading to billboard tree. |
| castShadows | Gets and sets an array of booleans to enable shadow casting for each LOD. |
| castShadowsByDefault | Gets and sets a boolean to toggle whether the imported SpeedTree casts shadows. |
| defaultBillboardShader | Returns the default SpeedTree billboard shader for the active render pipeline, or null if the asset is a SpeedTree v8 asset. |
| defaultShader | Returns the default SpeedTree shader for the active render pipeline (either v7 or v8 according to the asset version). |
| enableBump | Gets and sets an array of booleans to enable normal mapping for each LOD. |
| enableBumpByDefault | Gets and sets a boolean to enable normal mapping on the imported SpeedTree model. |
| enableHue | Gets and sets an array of booleans to enable hue variation effect for each LOD. |
| enableHueByDefault | Gets and sets a boolean to enable hue variation effect on the imported SpeedTree model. |
| enableSettingOverride | Gets and sets an array of booleans to customize importer settings for a specific LOD. |
| enableSmoothLODTransition | Enables smooth LOD transitions. |
| enableSubsurface | Gets and sets an array of booleans to enable the subsurface scattering effect for each LOD (affects only SpeedTree v8 assets). |
| enableSubsurfaceByDefault | Gets and sets a boolean to enable the subsurface scattering effect for the SpeedTree asset (affects only SpeedTree v8 assets). |
| fadeOutWidth | Proportion of the billboard LOD region width which is used for fading out the billboard. |
| generateColliders | Gets and sets the boolean to toggle collider object generation during import. |
| generateRigidbody | Gets and sets the boolean to toggle Rigidbody generation during import. |
| hasBillboard | Tells if there is a billboard LOD. |
| hasImported | Tells if the SPM file has been previously imported. |
| hueVariation | Gets and sets a default hue variation color and amount (in alpha). |
| isV8 | Returns true if the asset is a SpeedTree v8 asset. |
| LODHeights | Gets and sets an array of floats of each LOD's screen height value. |
| mainColor | Gets and sets a default main color. |
| materialFolderPath | Returns the folder path where generated materials will be placed in. |
| materialLocation | Material import location options. |
| receiveShadows | Gets and sets an array of booleans to enable shadow receiving for each LOD. |
| receiveShadowsByDefault | Gets and sets a boolean to enable whether the SpeedTree asset receives shadows from other objects in your scene. |
| scaleFactor | How much to scale the tree model compared to what is in the imported SpeedTree model file. |
| selectedWindQuality | Gets and sets an integer corresponding to the SpeedTreeWind enum values. The value is clamped by SpeedTreeImporter.bestWindQuality internally. |
| useLightProbes | Gets and sets an array of booleans to enable Light Probe lighting for each LOD. |
| useLightProbesByDefault | Gets and sets a boolean to enable light probe lighting for the imported SpeedTree model. |
| windQualities | Gets and sets an array of integers of the wind qualities on each LOD. Values will be clamped by SpeedTreeImporter.bestWindQuality internally. |

### Constructors

| Constructor | Description |
| --- | --- |
| SpeedTreeImporter | Construct a new SpeedTreeImporter object. |

### Public Methods

| Method | Description |
| --- | --- |
| GenerateMaterials | Generates all necessary materials under materialFolderPath. If Version Control is enabled please first check out the folder. |
| SearchAndRemapMaterials | Search the project for matching materials and use them instead of the internal materials. |

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
