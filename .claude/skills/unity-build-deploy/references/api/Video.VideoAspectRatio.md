<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoAspectRatio.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use these methods to fit a video into your target area.

This enum gives you several options to manage how the VideoPlayer renders the video to a target area. To do this, the VideoPlayer adjusts or maintains the video's original aspect ratio. If you render a video into a RenderTexture, and the aspect ratio of the RenderTexture doesn't match that of the video being rendered, the VideoPlayer automatically adds black bars around the video. If you render a video into a Camera, any area around the video remains transparent.

```csharp
// This script switches between the aspect ratios when you press the Spacebar. 
// To set up your project for this script: 
// 1. Attach this script to a GameObject in your Scene. 
// 2. Add a VideoPlayer component to your GameObject.
// 3. Assign a VideoClip to your VideoPlayer. using UnityEngine;
using UnityEngine.Video;public class VideoRenderModeExample : MonoBehaviour
{
    VideoPlayer videoPlayer;
    
    void Start()
    {
        videoPlayer = GetComponent<VideoPlayer>();        // Make video play over the Scene. 
        videoPlayer.renderMode = VideoRenderMode.CameraNearPlane;
        Camera mainCamera = Camera.main; 
        videoPlayer.targetCamera = mainCamera;        // Loop the video.
        videoPlayer.isLooping = true;        // Set the default aspect ratio.
        videoPlayer.aspectRatio = VideoAspectRatio.Stretch;        // Play the video.
        videoPlayer.Play();
    }    private void Update()
    {
        // If you press the Spacebar, cycle through the aspect ratios.
        if (Input.GetKeyDown(KeyCode.Space))
        {
            VideoAspectRatio currentAspectRatio = videoPlayer.aspectRatio;            // Cycle through the enum values and loop back around. 
            int nextAspectRatio = ((int)currentAspectRatio + 1) % System.Enum.GetValues(typeof(VideoAspectRatio)).Length;            // Apply the new aspect ratio.
            videoPlayer.aspectRatio = (VideoAspectRatio)nextAspectRatio;            Debug.Log($"Switched aspect ratio to: {videoPlayer.aspectRatio}");
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| NoScaling | Preserve the pixel size without adjusting for target area. |
| FitVertically | Resize the image proportionally so that the height fits the target area. |
| FitHorizontally | Resize the image proportionally so that the width fits the target area. |
| FitInside | Resize the image proportionally so that the content fits the target area. |
| FitOutside | Resize the image proportionally so that the content fits the target area. The VideoPlayer automatically crops the image if needed. |
| Stretch | Resize the image non-proportionally to fit the target area. |
