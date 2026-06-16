<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer.StepForward.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Immediately advance the current time by one frame.

If the video is currently playing, this method will pause the video before it advances to the next frame. However, if the VideoPlayer isn't prepared, this method will trigger preparation and display the first frame, but will not skip to the next frame. It steps forward from non-initialized to frame 0. 

This method is useful if you want to:

- Analyze each frame of a video.
- Debug issues related to the video or elements that play at certain frames.
- Take finer control over the playback speed, because you can choose exactly when the next frame will appear. However, the WebGL implementation is unable to provide frame-accurate control due to platform limitations.

```csharp
using UnityEngine;
using UnityEngine.Video;
using System.Collections;// In the Inspector of your GameObject, attach this script and a VideoPlayer component. 
// Also, assign a VideoClip to your VideoPlayer component.  
// Use this script to cycle through a video frame by frame. public class StepForwardExample : MonoBehaviour
{
    VideoPlayer videoPlayer;    public void Start()
    {
        videoPlayer = GetComponent<VideoPlayer>();
        videoPlayer.Pause();
    }    private void Update()
    {
        if (Input.GetKeyDown("space") && videoPlayer.isPrepared)
        {
            Debug.Log("Space key pressed."); 
            // Go forward one frame in the video when you press the Spacebar. 
            videoPlayer.StepForward(); 
        }
    }
}
```
