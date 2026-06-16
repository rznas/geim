<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoClip-originalPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the original video clip file path as it was imported into Unity. (Read Only).

Use this property to find the original location of the file when you imported it into Unity. If you move the video clip file, this property’s value remains as the original location. The value only updates if you reimport the file. 

**Note**: When you import your video file, if you enable **Transcode** in the VideoClip Import Settings, `originalPath` returns the new video format instead of the original format. For example, if you do the following:

1. Import an MP4 video file into Unity.
2. Click on the file to show the Import Settings window.
3. Enable **Transcode**.
4. Set **Codec** to **VP8**.

Unity imports the video file in the WebM format, and `originalPath` returns `.webm` instead of `.mp4`. To get your original format instead, use AssetDatabase.GetAssetPath.

Additional resources: VideoClip Importer.

```csharp
// The script outputs the clip’s original path to the console. 
// Assign this script and a VideoPlayer component to a GameObject in your Scene.
// In the VideoPlayer component, assign a video clip. using UnityEngine;
using UnityEngine.Video;
using UnityEditor;public class OriginalPathExample : MonoBehaviour
{
    void Start()
    {
        VideoPlayer videoPlayer = GetComponent<VideoPlayer>();
        VideoClip videoClip = videoPlayer.clip;
        // Get the original video file path as it was imported into Unity.
        string originalPath = videoClip.originalPath;
        Debug.Log("Original Path: " + originalPath);        // Verify if the original file exists. 
        if (System.IO.File.Exists(originalPath))
        {
            Debug.Log("Original video file found at: " + originalPath);
        }
        else
        {
            Debug.Log("Original video file not found at: " + originalPath +
                ". Checking AssetDatabase instead.");
            // Check Asset database instead for the video clip. 
            string assetPath = AssetDatabase.GetAssetPath(videoClip);
            if (System.IO.File.Exists(assetPath))
            {
                Debug.Log("Original video file found at " + assetPath);
            }
            else Debug.LogWarning("Original video file not found!");
        }
    }
}
```
