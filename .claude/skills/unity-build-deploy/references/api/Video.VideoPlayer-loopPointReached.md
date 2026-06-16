<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer-loopPointReached.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The instance of the VideoPlayer that invokes the event. |

### Description

The VideoPlayer emits this event when the video reaches the end of its playback.

If you set the VideoPlayer.isLooping property to `true`, this event makes the video play again. Otherwise the VideoPlayer stops. You can also set the **Loop** property in the Inspector window of the VideoPlayer component.

Additional resources: VideoPlayer.isLooping, VideoPlayer.started, EventHandler.

```csharp
// This script plays a Particle System when the video finishes, and then loops the video. 
// Attach this script and a VideoPlayer component to a GameObject. Also attach a ParticleSystem in the Inspector. using UnityEngine;
using UnityEngine.Video;public class LoopPointReachedExample : MonoBehaviour
{
    VideoPlayer videoPlayer;
    public ParticleSystem particles;     void Start()
    {
        videoPlayer = GetComponent<VideoPlayer>();
        particles.playOnAwake = false;         // When the video playback is done, restart the video. 
        videoPlayer.isLooping = true;        // Each time the video reaches the end, call this function. 
        videoPlayer.loopPointReached += OnLoopPointReached;        videoPlayer.Play();
    }    void OnLoopPointReached(VideoPlayer vp)
    {
        // Play the particle effect when the video reaches the end.  
        Debug.Log("Loop finished, play particle effect.");
        particles.Play();
    }
}
```
