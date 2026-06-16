<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.Video3DLayout.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Types of 3D content layout within a video.

Use this enum to change how the VideoPlayer displays 3D stereoscopic videos. 3D videos include slightly different views for the left and right eyes, which the video combines to create the illusion of depth.

These formats give you more flexibility to cater to different types of tools that were used to create the stereoscopic movie, and what are the limitations of the platform decoding the movie for rendering. 

The choice of stereoscopic video layout offers you more flexibility because it's easier to adapt to the different tools used to create the 3D movie and the limitations of the platform decoding it. If the platform or decoder can't handle wide resolutions (for example 3840x1080 for side-by-side HD), you can switch to the over/under layout (e.g., 1920x2160) to solve the issue. Both layouts use the same number of pixels but differ in aspect ratio, so it's easier to adapt.

```csharp
// This script sets a video's layout to 3D and plays the video. 
// Attach a VideoPlayer that contains a 3D video clip. using UnityEngine;
using UnityEngine.Video;public class Video3DLayoutExample : MonoBehaviour
{
    public VideoPlayer videoPlayer;    void Start()
    {
        // Set the video layout to Side-by-Side 3D.
        videoPlayer.targetCamera3DLayout = Video3DLayout.SideBySide3D;        // Play the video. 
        videoPlayer.Play();
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| No3D | Use this setting if the video doesn't have any 3D content. |
| SideBySide3D | Video contains 3D content where the left eye occupies the left half and right eye occupies the right half of video frames. |
| OverUnder3D | Video contains 3D content where the left eye occupies the upper half and right eye occupies the lower half of video frames. |
