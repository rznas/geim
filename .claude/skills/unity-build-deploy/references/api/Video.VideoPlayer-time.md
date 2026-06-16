<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer-time.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The presentation time of the currently available frame in VideoPlayer.texture in seconds.

Use `VideoPlayer.time` to achieve the following actions:

- Start the video at a certain time.
- Search through a video.
- Synchronize a part of your clip with another element- for example, with sounds, visual effects or events.

When you set `VideoPlayer.time`, it initiates a seek operation. For example, if you set `VideoPlayer.time = 10`, the VideoPlayer:

1. Starts to move the video towards the 10 second mark.
2. Fires the VideoPlayer.seekCompleted event when it reaches 10 seconds.
3. Prepares the frame at this time for display.
4. Triggers VideoPlayer.frameReady when the frame is prepared and displays the frame.

The `time` value only properly settles when the VideoPlayer displays the frame.

If you set `time` to another value during this operation, the VideoPlayer creates a new seek operation and adds it to a queue. The new operation will start when the previous one completes.

Additional resources: VideoPlayer.Play, VideoPlayer.texture.

```csharp
using UnityEngine; 
using UnityEngine.Video; public class TimeExample : MonoBehaviour
{
    VideoPlayer videoPlayer;    private void Start()
    {
        // Get the VideoPlayer component from the GameObject that contains this script.  
        videoPlayer = GetComponent<VideoPlayer>();
        // Skip to 10 seconds into the video. 
        videoPlayer.time = 10.0f;
        // Play the video. 
        videoPlayer.Play();
    }
}
```
