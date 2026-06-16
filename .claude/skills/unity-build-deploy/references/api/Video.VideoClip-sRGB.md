<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoClip-sRGB.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether the imported clip contains sRGB color data (Read Only).

This setting controls whether sRGB->Linear color space conversion is done when the VideoPlayer is loading the video data into textures. This setting is only relevant when Linear color space is used.

Most movies store color data in sRGB color space. Set VideoClipImporter.sRGBClip to true in most cases.

Non-color movies are commonly stored as linear values, and the GPU should not perform color space conversions. Set to false in the VideoClipImporter for non-color movies.

This setting corresponds to VideoClipImporter.sRGBClip in the video clip importer.

Additional resources: PlayerSettings.colorSpace.

```csharp
using UnityEngine;
using UnityEngine.Video;public class SRGBExample : MonoBehaviour
{
    VideoPlayer videoPlayer;    void Start()
    {
        videoPlayer = GetComponent<VideoPlayer>();
        // Get the VideoClip from the VideoPlayer
        VideoClip clip = videoPlayer.clip;        if (clip != null)
        {
            // Output if the clip contains sRGB color data.  
            Debug.Log("Does this clip use sRGB color data? : " + clip.sRGB);
        }
        else
        {
            Debug.LogError("No VideoClip assigned to the VideoPlayer.");
        }
    }
}
```
