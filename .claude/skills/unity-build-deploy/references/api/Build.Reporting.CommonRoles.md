<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Reporting.CommonRoles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This class provides constant values for some of the common roles used by files in the build. The role of each file in the build is available in BuildFile.role.

### Static Properties

| Property | Description |
| --- | --- |
| appInfo | The BuildFile.role value of the file that provides config information used in Low Integrity mode on Windows. |
| assetBundle | The BuildFile.role value of built AssetBundle files. |
| assetBundleTextManifest | The BuildFile.role value of an AssetBundle manifest file, produced during the build process, that contains information about the bundle and its dependencies. |
| bootConfig | The BuildFile.role value of the file that contains configuration information for the very early stages of engine startup. |
| builtInResources | The BuildFile.role value of the file that contains built-in resources for the engine. |
| builtInShaders | The BuildFile.role value of the file that contains Unity's built-in shaders, such as the Standard shader. |
| crashHandler | The BuildFile.role value of the executable that is used to capture crashes from the player. |
| debugInfo | The BuildFile.role value of files that contain information for debuggers. |
| dependentManagedLibrary | The BuildFile.role value of a managed library that is present in the build due to being a dependency of a CommonRoles.managedLibrary. |
| engineLibrary | The BuildFile.role value of the main Unity runtime when it is built as a separate library. |
| executable | The BuildFile.role value of an executable - the file that will actually be launched on the target device. |
| globalGameManagers | The BuildFile.role value of the file that contains global Project Settings data for the player. |
| managedEngineApi | The BuildFile.role value of files that provide the managed API for Unity. |
| managedLibrary | The BuildFile.role value of a managed assembly, containing compiled script code. |
| manifestAssetBundle | The BuildFile.role value of a manifest AssetBundle, which is an AssetBundle that contains information about other AssetBundles and their dependencies. |
| monoConfig | The BuildFile.role value of files that are used as configuration data by the Mono runtime. |
| monoRuntime | The BuildFile.role value of files that make up the Mono runtime itself. |
| resourcesFile | The BuildFile.role value of the file that contains the contents of the project's "Resources" folder, packed into a single file. |
| scene | The BuildFile.role value of a file that contains the packed content of a Scene. |
| sharedAssets | The BuildFile.role value of a file that contains asset objects which are shared between Scenes. Examples of asset objects are textures, models, and audio. |
| streamingAsset | The BuildFile.role value of files that have been copied into the build without modification from the StreamingAssets folder in the project. |
| streamingResourceFile | The BuildFile.role value of a file that contains streaming resource data. |
