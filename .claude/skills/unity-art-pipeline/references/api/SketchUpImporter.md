<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SketchUpImporter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Derives from AssetImporter to handle importing of SketchUp files.

From the SketchUpImporter, you can access certain properties that are extracted from the SketchUp file.

The following is an example of showing the geo coordinate extracted from the SketchUp file.

```csharp
using UnityEngine;
using UnityEditor;public class SketchUpUtility
{
    public static void ShowGeoCoordinate(GameObject go)
    {
        string assetPath = AssetDatabase.GetAssetPath(go); // get asset path
        // get SketchUpImporter
        SketchUpImporter importer = AssetImporter.GetAtPath(assetPath) as SketchUpImporter;
        if (importer == null)
        {
            Debug.Log("This object is not imported by SketchUpImporter");
            return;
        }        Debug.Log(string.Format("Lat:{0} Long:{1} NorthCorrection:{2}", importer.latitude, importer.longitude, importer.northCorrection));
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| latitude | Retrieves the latitude Geo Coordinate imported from the SketchUp file. |
| longitude | Retrieves the longitude Geo Coordinate imported from the SketchUp file. |
| northCorrection | Retrieves the north correction value imported from the SketchUp file. |

### Public Methods

| Method | Description |
| --- | --- |
| GetDefaultCamera | The default camera or the camera of the active Scene which the SketchUp file was saved with. |
| GetScenes | The method returns an array of SketchUpImportScene which represents SketchUp scenes. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| assetBundleName | Get or set the AssetBundle name. |
| assetBundleVariant | Get or set the AssetBundle variant. |
| assetPath | The path name of the asset for this importer. (Read Only) |
| importSettingsMissing | The value is true when no meta file is provided with the imported asset. |
| userData | Get or set any user data. |
| addCollider | Add mesh colliders to imported meshes. |
| animationCompression | Animation compression setting. |
| animationPositionError | Allowed error of animation position compression. |
| animationRotationError | Allowed error of animation rotation compression. |
| animationScaleError | Allowed error of animation scale compression. |
| animationType | Animator generation mode. |
| animationWrapMode | The default wrap mode for the generated animation clips. |
| autoGenerateAvatarMappingIfUnspecified | Generate auto mapping if no avatarSetup is provided when importing humanoid animation. |
| avatarSetup | The Avatar generation of the imported model. |
| bakeAxisConversion | Computes the axis conversion on geometry and animation for Models defined in an axis system that differs from Unity's (left handed, Z forward, Y-up). When enabled, Unity transforms the geometry and animation data in order to convert the axis. When disabled, Unity transforms the root GameObject of the hierarchy in order to convert the axis. |
| bakeIK | Bake Inverse Kinematics (IK) when importing. |
| clipAnimations | Animation clips to split animation into. Additional resources: ModelImporterClipAnimation. |
| defaultClipAnimations | Generate a list of all default animation clip based on TakeInfo. |
| extraExposedTransformPaths | Animation optimization setting. |
| extraUserProperties | A list of default FBX properties to treat as user properties during OnPostprocessGameObjectWithUserProperties. |
| fileScale | Scaling factor used when useFileScale is set to true (Read-only). |
| generateAnimations | Animation generation options. |
| generateMeshLods | If true, Unity generates Mesh LOD levels for this mesh during import. |
| generateSecondaryUV | Generate secondary UV set for lightmapping. |
| globalScale | Global scale factor for importing. |
| humanDescription | The human description that is used to generate an Avatar during the import process. |
| humanoidOversampling | Controls how much oversampling is used when importing humanoid animations for retargeting. |
| importAnimatedCustomProperties | Import animated custom properties from file. |
| importAnimation | Import animation from file. |
| importBlendShapeDeformPercent | Import BlendShapes deform percent. |
| importBlendShapeNormals | Blend shape normal import options. |
| importBlendShapes | Controls import of BlendShapes. |
| importCameras | Controls import of cameras. Basic properties like field of view, near plane distance and far plane distance can be animated. |
| importConstraints | Import animation constraints. |
| importedTakeInfos | Generates the list of all imported take. |
| importLights | Controls import of lights. Note that because light are defined differently in DCC tools, some light types or properties may not be exported. Basic properties like color and intensity can be animated. |
| importNormals | Vertex normal import options. |
| importTangents | Vertex tangent import options. |
| importVisibility | Use visibility properties to enable or disable MeshRenderer components. |
| indexFormat | Format of the imported mesh index buffer data. |
| isBakeIKSupported | Is Bake Inverse Kinematics (IK) supported by this importer. |
| isReadable | Are mesh vertices and indices accessible from script? |
| isTangentImportSupported | Is import of tangents supported by this importer. |
| isUseFileUnitsSupported | Is useFileUnits supported for this asset. |
| keepQuads | If this is true, any quad faces that exist in the mesh data before it is imported are kept as quads instead of being split into two triangles, for the purposes of tessellation. Set this to false to disable this behavior. |
| materialImportMode | Material creation options. |
| materialLocation | Material import location options. |
| materialName | Material naming setting. |
| materialSearch | Existing material search setting. |
| maxBonesPerVertex | The maximum number of bones per vertex stored in this mesh data. |
| maximumMeshLod | The maximum LOD level index after which the mesh generation stops. |
| meshCompression | Mesh compression setting. |
| meshLodGenerationFlags | The importer uses these Mesh LOD generation flags if Mesh LOD generation is enabled for this mesh. |
| meshOptimizationFlags | Options to control the optimization of mesh data during asset import. |
| minBoneWeight | Minimum bone weight to keep. |
| motionNodeName | The path of the transform used to generation the motion of the animation. |
| normalCalculationMode | Normal generation options for ModelImporter. |
| normalSmoothingAngle | Smoothing angle (in degrees) for calculating normals. |
| normalSmoothingSource | Source of smoothing information for calculation of normals. |
| optimizeBones | Only import bones where they are connected to vertices. |
| optimizeGameObjects | Animation optimization setting. |
| optimizeMeshPolygons | Optimize the order of polygons in the mesh to make better use of the GPUs internal caches to improve rendering performance. |
| optimizeMeshVertices | Optimize the order of vertices in the mesh to make better use of the GPUs internal caches to improve rendering performance. |
| preserveHierarchy | If true, always create an explicit Prefab root. Otherwise, if the model has a single root, it is reused as the Prefab root. |
| referencedClips | Returns the matching referenced clip assets for this model. |
| removeConstantScaleCurves | Removes constant animation curves with values identical to the object initial scale value. |
| resampleCurves | If set to false, the importer will not resample curves when possible. Read more about animation curve resampling.Notes:- Some unsupported FBX features (such as PreRotation or PostRotation on transforms) will override this setting. In these situations, animation curves will still be resampled even if the setting is disabled. For best results, avoid using PreRotation, PostRotation and GetRotationPivot.- This option was introduced in Version 5.3. Prior to this version, Unity's import behaviour was as if this option was always enabled. Therefore enabling the option gives the same behaviour as pre-5.3 animation import. |
| secondaryUVAngleDistortion | Threshold for angle distortion (in degrees) when generating secondary UV. |
| secondaryUVAreaDistortion | Threshold for area distortion when generating secondary UV. |
| secondaryUVHardAngle | Hard angle (in degrees) for generating secondary UV. |
| secondaryUVMarginMethod | Method to use for handling margins when generating secondary UV. |
| secondaryUVMinLightmapResolution | The minimum lightmap resolution in texels per unit that the associated model is expected to have. |
| secondaryUVMinObjectScale | The minimum object scale that the associated model is expected to have. |
| secondaryUVPackMargin | Margin to be left between charts when packing secondary UV. |
| skinWeights | Skin weights import options. |
| sortHierarchyByName | Sorts the gameObject hierarchy by name. |
| sourceAvatar | Imports the HumanDescription from the given Avatar. |
| strictVertexDataChecks | Enables strict checks on imported vertex data. |
| swapUVChannels | Swap primary and secondary UV channels when importing. |
| transformPaths | Generates the list of all imported Transforms. |
| useFileScale | Use FileScale when importing. |
| useFileUnits | Detect file units and import as 1FileUnit=1UnityUnit, otherwise it will import as 1cm=1UnityUnit. |
| useSRGBMaterialColor | When disabled, imported material albedo colors are converted to gamma space. This property should be disabled when using linear color space in Player rendering settings. The default value is true. |
| weldVertices | Combine vertices that share the same position in space. |
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
| CreateDefaultMaskForClip | Creates a mask that matches the model hierarchy, and applies it to the provided ModelImporterClipAnimation. |
| ExtractTextures | Extracts the embedded textures from a model file (such as FBX or SketchUp). |
| SearchAndRemapMaterials | Search the project for matching materials and use them instead of the internal materials. |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| GetAtPath | Retrieves the asset importer for the asset at path. |
| GetImportLog | Retrieves logs generated during the import of the asset at path. |
| GetReferencedClipsForModelPath | Returns all the referenced clips matching the given model name. |
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
