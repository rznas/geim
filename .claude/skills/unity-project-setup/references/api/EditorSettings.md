<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

User settings for Unity Editor.

Use EditorSettings to apply Editor Project Settings to your Unity Project. You can control settings such as version control, streaming settings, and Asset serialization.

Additional resources: Editor Project Settings

### Static Properties

| Property | Description |
| --- | --- |
| assetNamingUsesSpace | Controls whether to insert a space before a number in duplicated Asset names. |
| assetPipelineMode | Select the assetpipeline mode. |
| asyncShaderCompilation | Enable asynchronous Shader compilation in Game and Scene view. |
| cacheServerDownloadBatchSize | Controls the size of the batches used when making cacheserver download requests. |
| cacheServerEnableDownload | Toggle whether to enable downloading from cache server. |
| cacheServerEnableTls | Toggle whether to enable TLS encryption to cache server. |
| cacheServerEnableUpload | Toggle whether to enable uploading from cache server. |
| cacheServerEndpoint | Cache server endpoint IP address |
| cacheServerMode | Select cache server mode |
| cacheServerNamespacePrefix | Sets the namespace prefix to use for the cache server. |
| cacheServerValidationMode | Select Accelerator server validation mode. |
| cachingShaderPreprocessor | This property is now obsolete. Unity always uses the Caching Shader Preprocessor. |
| enableTextureStreamingInEditMode | Enable texture mipmap streaming system when in Edit Mode. |
| enableTextureStreamingInPlayMode | Enable texture mipmap streaming system when in Play Mode. |
| enterPlayModeOptions | Determines the state of the Enter Play Mode Options in the Unity Editor. |
| enterPlayModeOptionsEnabled | Determines whether the Enter Play Mode Options are enabled in the Unity Editor or not. |
| forceAssetUnloadAndGCOnSceneLoad | Forces a managed heap garbage collection and unloads unused assets after loading a scene in single mode in the Editor or exiting Prefab Mode. Disabling this can improve performance if you do not rely on managed class finalizers being called at that time. |
| gameObjectNamingDigits | Indicates the amount of digits to use for the numbers in a duplicated GameoObject's name. |
| gameObjectNamingScheme | Indicates which naming scheme to use for duplicated GameObjects. |
| hideBuildProfileClassicPlatforms | When set removes the platform list from the Build Profile Window. |
| lineEndingsForNewScripts | Determines what line endings to use in a new C# file created in the Editor. |
| prefabModeAllowAutoSave | Allow Auto Save in Prefab Mode for this project. |
| prefabRegularEnvironment | Allows you to specify a Scene to use as the editing environment for Prefabs. |
| prefabUIEnvironment | Allows you to specify a Scene to use as the editing environment for UI Prefabs. |
| projectGenerationRootNamespace | Controls which root namespace gets written into the c# .csproj projects that Unity generates. |
| projectGenerationUserExtensions | Controls list of extensions of files that will be included in the c# .csproj projects that Unity generates. |
| referencedClipsExactNaming | Controls which referenced clips an humanoid rig is able to update when using @convention files. |
| refreshImportMode | Controls the Editor's use of parallel processes when it imports assets during an asset database refresh, for this project. |
| serializeInlineMappingsOnOneLine | Forces Unity to write references and similar YAML structures on one line, which reduces version control noise. |
| shadowmaskStitching | Apply seam stitching to Shadowmask Lightmaps. |
| spritePackerPaddingPower | Power of 2 value to add a boundary (padding) to Sprites packed to the Atlas (Legacy Sprite Packer). |
| unityRemoteCompression | Gets or sets compression method used for Unity Remote screen stream. |
| unityRemoteDevice | Gets or sets device ID used for Unity Remote feature. |
| unityRemoteJoystickSource | Gets or sets joystick source used in editor when Unity Remote is connected. |
| unityRemoteResolution | Gets or sets resolution used for Unity Remote screen stream. |
| useLegacyProbeSampleCount | Enable the legacy fixed sample counts for baking Light Probes with Progressive Lightmapper. |

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
