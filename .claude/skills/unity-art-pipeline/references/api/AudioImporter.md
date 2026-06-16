<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioImporter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this class to modify AudioClip import settings from editor scripts.

Use these settings to ensure all or a subset of your audio files have the same import settings. You can also edit these settings in the Audio Clip Inspector. 

Additional resources: AudioClip

```csharp
// This script adds a new menu item to the Unity Editor. Select the menu item to change the settings of and reimport audio from a certain folder. using UnityEditor;
using UnityEngine; public class AudioImporterExample
{
    // Creates a new menu item in Unity Editor. 
    [MenuItem("Tools/Reimport sounds with new settings")]
    public static void SetAllToAmbisonic()
    {
        // Put the audio that you want to change in this directory. 
        string folderPath = "Assets/Sounds";        // Find all AudioClip assets in the specified folder.
        string[] guids = AssetDatabase.FindAssets("t:AudioClip", new[] { folderPath });        foreach (string guid in guids)
        {
            // Get the paths to the audio clips. 
            string assetPath = AssetDatabase.GUIDToAssetPath(guid);            // Get the AudioImporter for this audio clip.
            AudioImporter importer = AssetImporter.GetAtPath(assetPath) as AudioImporter;
            if (importer != null)
            {
                // Change the importer settings. 
                importer.ambisonic = true;
                importer.loadInBackground = true; 
                importer.forceToMono = false;
                // Reimport the asset to apply changes.
                AssetDatabase.ImportAsset(assetPath, ImportAssetOptions.ForceUpdate); 
                Debug.Log($"Changed '{assetPath}' settings.");
             }
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| ambisonic | Enable this property to treat the audio clip as ambisonic. |
| defaultSampleSettings | The default sample settings for the AudioClip importer. |
| forceToMono | Force audioclips to mono sound type, so all audio plays through a single channel. |
| loadInBackground | Corresponding to the "Load In Background" flag in the AudioClip inspector, when this flag is set, the loading of the clip will happen delayed without blocking the main thread. |

### Public Methods

| Method | Description |
| --- | --- |
| ClearSampleSettingOverride | Clears the sample settings override for the given platform. |
| ContainsSampleSettingsOverride | Returns whether the sample settings for a specified build target are currently overridden. |
| GetOverrideSampleSettings | Return the current override settings for the given platform. |
| SetOverrideSampleSettings | Sets the override sample settings for the given platform. |

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
