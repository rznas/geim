<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.ContentBuildInterface.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Low level interface for building content for Unity.

Note: this class and its members exist to provide low-level support for the **Scriptable Build Pipeline** package. This is intended for internal use only; use the Scriptable Build Pipeline package to implement a fully featured build pipeline. You can install this via the Unity Package Manager.

### Static Methods

| Method | Description |
| --- | --- |
| ArchiveAndCompress | Create a Unity archive file, containing the content of one or more resource files. |
| CalculateBuildUsageTags | Calculates the build usage of a set of objects. |
| CalculatePlayerDependenciesForScene | Calculates the Scene dependency information. |
| CalculatePlayerSerializationHashForType | Returns a unique hash for a given type's serialized layout. |
| GenerateAssetBundleBuilds | Returns an array of AssetBundleBuild structs that detail the current AssetBundle layout, as set through the Inspector and stored in the AssetDatabase. |
| GetGlobalUsageFromGraphicsSettings | Returns the global usage information calculated by the Shader Stripping section of Graphics Settings. |
| GetPlayerAssetRepresentations | Returns a list of visible objects directly contained inside of an asset. |
| GetPlayerDependenciesForObject | Returns a list of objects referenced by an object. |
| GetPlayerDependenciesForObjects | Returns a list of objects referenced by a set of objects. |
| GetPlayerObjectIdentifiersInAsset | Returns a list of objects directly contained inside of an asset. |
| GetPlayerObjectIdentifiersInSerializedFile | Returns a list of objects directly contained inside of a loose serialized file. |
| GetTypeForObject | Returns the System.Type of the ObjectIdentifier specified by objectID. |
| GetTypeForObjects | Returns the System.Type of the ObjectIdentifiers and the referenced SerializeReference class types specified by objectIDs. |
| GetTypesForObject | Returns the System.Type of the ObjectIdentifier and the referenced SerializeReference class types specified by objectID. |
| ObjectIsSupportedInBuild | Returns True if the passed in target object is a valid runtime object. |
| StartProfileCapture | Starts a profile capture to record content build profile events. |
| StopProfileCapture | Returns an array of ContentBuildProfileEvent structs that contain information for each occuring event. Also stops the profile capture. |
| WriteGameManagersSerializedFile | Writes the current settings of internal Unity game manager classes to the 'globalgamemanagers' file on disk. |
| WriteSceneSerializedFile | Writes Scene objects to a serialized file on disk. |
| WriteSerializedFile | Writes objects to a serialized file on disk. |
