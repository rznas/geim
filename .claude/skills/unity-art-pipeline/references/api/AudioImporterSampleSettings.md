<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioImporterSampleSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This structure contains a collection of settings used to define how an AudioClip should be imported.

Unity uses this structure with the AudioImporter to define how to import and load the AudioClip within the Scene. This is useful if you want to change the import settings of a group of audio clips to the same settings programmatically. You can also change these in the Inspector of the audio clip.

```csharp
// This script creates a custom menu item. If you click this item, it reimports the audio files
// (from a certain directory) with new import settings. The settings contain overrides for 
// multiple platforms (Default, Standalone, and Android). using UnityEditor;
using UnityEngine;public class AudioImporterSampleSettingsExample : MonoBehaviour
{
    [MenuItem("Tools/Apply Audio Overrides for Multiple Platforms")]
    public static void ApplyOverrides()
    {
        // Path to your audio files. Place your audio files in the following directory.
        string folderPath = "Assets/Sounds"; 
        // Find all audio clips in this folder. 
        string[] guids = AssetDatabase.FindAssets("t:AudioClip", new[] { folderPath });        // Loop through the audio clips in the folder. 
        foreach (string guid in guids)
        {
            string assetPath = AssetDatabase.GUIDToAssetPath(guid);
            // Get the importer for this audio file. 
            AudioImporter importer = AssetImporter.GetAtPath(assetPath) as AudioImporter;            // Change settings for the default platform. 
            AudioImporterSampleSettings defaultSettings = new AudioImporterSampleSettings
            {
                loadType = AudioClipLoadType.DecompressOnLoad,
                compressionFormat = AudioCompressionFormat.PCM,
                sampleRateSetting = AudioSampleRateSetting.PreserveSampleRate,
                sampleRateOverride = 44100,
                quality = 1.0f
            };
            importer.defaultSampleSettings = defaultSettings;            // Set override settings for Standalone platform. 
            AudioImporterSampleSettings standaloneSettings = new AudioImporterSampleSettings
            {
                loadType = AudioClipLoadType.CompressedInMemory, 
                compressionFormat = AudioCompressionFormat.Vorbis, 
                sampleRateSetting = AudioSampleRateSetting.OptimizeSampleRate,
                quality = 0.5f
            };
            importer.SetOverrideSampleSettings(BuildTargetGroup.Standalone, standaloneSettings);            // Set override settings for the Android platform. 
            AudioImporterSampleSettings androidSettings = new AudioImporterSampleSettings
            {
                loadType = AudioClipLoadType.Streaming, 
                compressionFormat = AudioCompressionFormat.ADPCM, 
                sampleRateSetting = AudioSampleRateSetting.OptimizeSampleRate,
                quality = 0.6f 
            };
            importer.SetOverrideSampleSettings(BuildTargetGroup.Android, androidSettings);
            // Reimport the audio file with new changes. 
            AssetDatabase.ImportAsset(assetPath, ImportAssetOptions.ForceUpdate);
            Debug.Log($"Successfully applied overrides for: {assetPath}");
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| compressionFormat | CompressionFormat defines the compression type that the audio file is encoded to. Different compression types have different performance and audio artifact characteristics. |
| loadType | LoadType defines how the imported AudioClip data should be loaded. |
| preloadAudioData | Preloads audio data of the clip when the clip asset is loaded. When this flag is off, scripts have to call AudioClip.LoadAudioData() to load the data before the clip can be played. Properties like length, channels and format are available before the audio data has been loaded. |
| quality | Audio compression quality (0-1)Amount of compression. The value roughly corresponds to the ratio between the resulting and the source file sizes. |
| sampleRateOverride | Target sample rate to convert to when samplerateSetting is set to OverrideSampleRate. |
| sampleRateSetting | Defines how the sample rate is modified (if at all) of the importer audio file. |
