<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer-started.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The instance of the VideoPlayer that invokes the event. |

### Description

The VideoPlayer emits this event when the video starts to play.

After the VideoPlayer prepares the video and plays it, it emits this event. This event is useful if you want to play sounds, visual effects, timers or similar effects when the video starts. 

Additional resources: VideoPlayer.loopPointReached, EventHandler.

```csharp
// This script plays some audio when the video starts. 
// Make sure to assign a VideoPlayer and AudioSource to your GameObject in the Inspector. using UnityEngine;
using UnityEngine.Video;public class VideoStartExample : MonoBehaviour
{
    VideoPlayer videoPlayer;
    public AudioSource audioSource;
    void Start()
    {
        videoPlayer = GetComponent<VideoPlayer>();        if (videoPlayer != null)
        {
            // Call these functions when the video is prepared and started. 
            videoPlayer.prepareCompleted += OnPrepareCompleted;
            videoPlayer.started += OnVideoStarted;
            // Prepare the VideoPlayer. 
            videoPlayer.Prepare();
        }  
    }    void OnPrepareCompleted(VideoPlayer vp)
    {
        Debug.Log("Preparation done.");
        videoPlayer.Play();
    }    void OnVideoStarted(VideoPlayer vp)
    {
        // Play an audio clip when the video starts.
        Debug.Log("Video has started.");
        if (audioSource != null)
        {
            audioSource.Play();
        }
        else Debug.Log("OnVideoStarted tried to play an AudioSource that doesn't exist.");
    }
}
```
