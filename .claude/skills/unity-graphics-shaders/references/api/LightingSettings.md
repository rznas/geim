<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightingSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An object containing settings for precomputing lighting data, that Unity can serialize as a Lighting Settings Asset.

When the Unity Editor precomputes lighting data for a Scene that uses the Baked Global Illumination system or the Enlighten Realtime Global Illumination system, it uses settings from a `LightingSettings` object. The same `LightingSettings` object can be assigned to more than one Scene, which makes it possible to share settings across multiple Scenes.

The following example shows how to create a `LightingSettings` object and assign it to the active Scene using the Lightmapping.lightingSettings API:

```csharp
using UnityEngine;
using UnityEditor;public class CreateLightingSettingsExample
{
    [MenuItem("Example/Create Lighting Settings")]
    static void CreateExampleLightingSettings()
    {
        // Create an instance of LightingSettings
        LightingSettings lightingSettings = new LightingSettings();        // Configure the LightingSettings object
        lightingSettings.albedoBoost = 8.0f;        // Assign the LightingSettings object to the active Scene
        Lightmapping.lightingSettings = lightingSettings;
    }
}
```

The following example shows how to create a `LightingSettings` object, and save it to disk as a Lighting Settings Asset using the AssetDatabase.CreateAsset API.

```csharp
using UnityEngine;
using UnityEditor;public class CreateLightingSettingsExample
{
    [MenuItem("Example/Create Lighting Settings")]
    static void SaveExampleLightingSettingsToDisk()
    {
        // Create an instance of LightingSettings
        LightingSettings lightingSettings = new LightingSettings();        // Configure the LightingSettings object
        lightingSettings.albedoBoost = 8.0f;        // Save it to your Project, using the .lighting extension
        AssetDatabase.CreateAsset(lightingSettings, "Assets/ExampleLightingSettings.lighting");
    }
}
```

Additional resources: Lighting Settings Asset.

### Properties

| Property | Description |
| --- | --- |
| albedoBoost | The intensity of surface albedo throughout the Scene when considered in lighting calculations. This value influences the energy of light at each bounce. (Editor only). |
| ao | Whether to apply ambient occlusion to lightmaps. (Editor only). |
| aoExponentDirect | Determines the degree to which direct lighting is considered when calculating ambient occlusion in lightmaps. (Editor only). |
| aoExponentIndirect | Sets the contrast of ambient occlusion that Unity applies to indirect lighting in lightmaps. (Editor only). |
| aoMaxDistance | The distance that a ray travels before Unity considers it to be unoccluded when calculating ambient occlusion in lightmaps. (Editor only). |
| bakedGI | Whether to enable the Baked Global Illumination system for this Scene. |
| blockAlignedPacking | Aligns UV charts in the lightmap to 4x4 texel boundaries. |
| bruteForcePacking | Whether to exhaustively check every possible lightmap layout when packing lightmaps. |
| denoiserTypeAO | Determines the type of denoising that the Progressive Lightmapper applies to ambient occlusion in lightmaps. (Editor only). |
| denoiserTypeDirect | Determines the denoiser that the Progressive Lightmapper applies to direct lighting. (Editor only). |
| denoiserTypeIndirect | Determines the denoiser that the Progressive Lightmapper applies to indirect lighting. (Editor only). |
| directionalityMode | Determines whether the lightmapper should generate directional or non-directional lightmaps. (Editor only). |
| directSampleCount | Specifies the number of samples the Progressive Lightmapper uses for direct lighting calculations. (Editor only). |
| environmentImportanceSampling | Determines whether Progressive Lightmappers use importance sampling when they sample environment lighting while baking. |
| environmentSampleCount | Specifies the number of samples the Progressive Lightmapper uses when sampling indirect lighting from the skybox. (Editor only). |
| extractAO | Whether the Progressive Lightmapper extracts Ambient Occlusion to a separate lightmap. (Editor only). |
| filteringAtrousPositionSigmaAO | Specifies the threshold the Progressive Lightmapper uses to filter direct light stored in the lightmap when using the A-Trous filter. (Editor only). |
| filteringAtrousPositionSigmaDirect | Specifies the threshold the Progressive Lightmapper uses to filter the indirect lighting component of the lightmap when using the A-Trous filter. (Editor only). |
| filteringAtrousPositionSigmaIndirect | Specifies the radius the Progressive Lightmapper uses to filter the ambient occlusion component in the lightmap when you use the Gaussian filter. (Editor only). |
| filteringGaussianRadiusAO | Specifies the radius the Progressive Lightmapper uses to filter the direct lighting component of the lightmap when you use the Gaussian filter. (Editor only). |
| filteringGaussianRadiusDirect | Specifies the radius the Progressive Lightmapper uses to filter the indirect lighting component of the lightmap when you use the Gaussian filter. (Editor only). |
| filteringGaussianRadiusIndirect | Specifies the method that the Progressive Lightmapper uses to reduce noise in lightmaps. (Editor only). |
| filteringMode | Specifies the filter type that the Progressive Lightmapper uses for ambient occlusion. (Editor only). |
| filterTypeAO | Specifies the filter kernel that the Progressive Lightmapper uses for ambient occlusion. (Editor only). |
| filterTypeDirect | Specifies the filter kernel that the Progressive Lightmapper uses for the direct lighting. (Editor only). |
| filterTypeIndirect | Specifies whether the Editor calculates the final global illumination light bounce at the same resolution as the baked lightmap. |
| indirectResolution | Defines the number of texels that Enlighten Realtime Global Illumination uses per world unit when calculating indirect lighting. (Editor only). |
| indirectSampleCount | Specifies the number of samples the Progressive Lightmapper uses for indirect lighting calculations. (Editor only). |
| indirectScale | Multiplies the intensity of of indirect lighting in lightmaps. (Editor only). |
| lightmapCompression | The level of compression the Editor uses for lightmaps. |
| lightmapMaxSize | The maximum size in pixels of an individual lightmap texture. (Editor only). |
| lightmapPackingMethod | The algorithm used to pack UV charts into lightmaps. |
| lightmapPackingMode | The approach used to pack UV charts into lightmaps. |
| lightmapPadding | Sets the distance (in texels) between separate UV tiles in lightmaps. (Editor only). |
| lightmapper | Determines which backend to use for baking lightmaps in the Baked Global Illumination system. (Editor only). |
| lightmapResolution | Defines the number of texels to use per world unit when generating lightmaps. |
| lightProbeSampleCountMultiplier | Specifies the number of samples to use for Light Probes relative to the number of samples for lightmap texels. (Editor only). |
| maxBounces | Stores the maximum number of bounces the Progressive Lightmapper computes for indirect lighting. (Editor only) |
| minBounces | Stores the minimum number of bounces the Progressive Lightmapper computes for indirect lighting. (Editor only) |
| mixedBakeMode | Sets the MixedLightingMode that Unity uses for all Mixed Lights in the Scene. (Editor only). |
| packingAttempts | The number of packing attempts before determining the most efficient layout. |
| prioritizeView | Whether the Progressive Lightmapper prioritizes baking visible texels within the frustum of the Scene view. (Editor only). |
| realtimeEnvironmentLighting | Determines the lightmap that Unity stores environment lighting in. |
| realtimeGI | Whether to enable the Enlighten Realtime Global Illumination system for this Scene. |
| repackUnderutilizedLightmaps | When enabled, Unity attempts to repack lightmaps that are mostly empty at a lower resolution. |
| respectSceneVisibilityWhenBakingGI | When Unity is precomputing or baking Global Illumination, respect the Scene Visibility setting of a [[GameObject] with a MeshRenderer or Terrain component. |

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
