<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioImporter.GetOverrideSampleSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| platformGroup | The platform for which to get the override settings.  See BuildTargetGroup for the complete list of options. |
| platform | The platform for which to get the override settings.  See BuildTargetGroup for the complete list of options and type the desired platform enum name in the form of a string. |

### Returns

**AudioImporterSampleSettings** The override sample settings for the given platform.

### Description

Return the current override settings for the given platform.

If there is no override for the passed platform, the default translated settings will be returned.

The translated settings are the default settings to use for the given platform. For example on some platforms, the `compressionFormat` will be different to depending on different hardware decoders.

Make sure to check BuildTargetGroup for the names of the platforms.

```csharp
// This script checks if the audio clip has override settings for a specific platform. 
// Attach this script to a GameObject in your Scene. 
// Then, in the GameObject's Inspector, attach an AudioClip and set the platform you want to check the override settings for. using UnityEditor;
using UnityEngine;public class AudioImporterExample : MonoBehaviour
{
    // Set your preferred platform and audio clip in the Inspector. 
    public BuildTargetGroup platformToCheck;
    public AudioClip audioClip;    void Start()
    {
        string audioClipPath = AssetDatabase.GetAssetPath(audioClip);        // Get the AudioImporter for this audio file.
        AudioImporter audioImporter = AssetImporter.GetAtPath(audioClipPath) as AudioImporter;        if (audioImporter == null)
        {
            Debug.LogError($"No AudioImporter found for path: {audioClipPath}");
            return;
        }        // Check if there are override settings for your chosen platform.
        if (audioImporter.ContainsSampleSettingsOverride(platformToCheck))
        {
            // Get the override sample settings for your chosen platform.
            AudioImporterSampleSettings sampleSettings = audioImporter.GetOverrideSampleSettings(platformToCheck);            // Log the platform-specific sample settings to the Console.
            Debug.Log($"Platform: {platformToCheck}");
            Debug.Log($"Compression Format: {sampleSettings.compressionFormat}");
            Debug.Log($"Quality: {sampleSettings.quality}");
            Debug.Log($"Load Type: {sampleSettings.loadType}");
        }
        else
        {
            Debug.Log($"No override sample settings found for {platformToCheck}.");
        }
    }
}
```
