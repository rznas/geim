<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VideoCodec.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Choose the video codec to use to import video clips.

Use this enum to set VideoImporterTargetSettings.codec. 

A video codec compresses (encodes) or decompresses (decodes) video data to reduce the file size but avoid reduction of quality as much as possible. For Unity to consider the video codec when it imports a video, make sure to enable the **Transcoding** property in the video clip’s **Inspector** window. For more information about video encoding, refer to Video encoding compatibility reference.

```csharp
// This script creates an Editor menu option that reimports a video with your preferred video codec (Auto is default). 
// Put this script in your Assets>Editor folder. If you don't have an Editor folder, create your own.  
// In the script, change the videoPath to a video file in your project. Save the script. 
// In the menu, go to Tools and select Change video codec settings.
// The video reimports with the new video codec. using UnityEngine;
using UnityEditor;public class VideoImportSettingsEditor : MonoBehaviour
{    [MenuItem("Tools/Change video codec settings")]
    static void SetVideoImporterSettings()
    {
        // Path to the video file in your project. Change the path to suit your own project. 
        string videoPath = "Assets/YourVideo.mp4";
        // Change this to your preferred video codec. 
        VideoCodec preferredCodec = VideoCodec.Auto;         // Get the VideoClipImporter for the video file
        VideoClipImporter importer = AssetImporter.GetAtPath(videoPath) as VideoClipImporter;        if (importer != null)
        {
            VideoImporterTargetSettings defaultSettings = importer.defaultTargetSettings;
            // Set the video codec to your chosen video codec.
            defaultSettings.codec = preferredCodec;            // Apply the updated settings for standalone. 
            importer.SetTargetSettings("Standalone", defaultSettings);            // Re-import the video file. 
            importer.SaveAndReimport();            Debug.Log($"Updated video importer settings for: {videoPath}");
        }
        else
        {
            Debug.LogError($"Failed to find VideoClipImporter for the path: {videoPath}");
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| Auto | Choose the codec that supports hardware decoding on the target platform. |
| H264 | Encode video with the H.264 codec. |
| H265 | Encode video with the H.265 codec. |
| VP8 | Encode video using the vp8 codec. |
