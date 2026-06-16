<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer.Pause.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Pauses the playback and leaves the current time intact.

Use this method to pause the playback of a video. This method sets VideoPlayer.isPlaying to `false`. To play again, use VideoPlayer.Play. 

If you pause the video when the VideoPlayer isn't prepared, this method triggers preparation and shows the first frame of the video. 

If you seek through to a different point in the video and then call `Pause()` before the VideoPlayer finishes preparation, it triggers preparation and shows the frame that was the seek target. For example, if you set VideoPlayer.time to `10.0f` and then call `Pause()`, it shows the frame at 10 seconds.

Additional resources: VideoPlayer.Play.

```csharp
// In the Inspector of a GameObject, attach this script and a VideoPlayer component. using UnityEngine;
using UnityEngine.Video;public class PauseExample: MonoBehaviour
{
    VideoPlayer videoPlayer;     void Start()
    {
        // Get the VideoPlayer component from the GameObject with this script attached. 
        videoPlayer = GetComponent<VideoPlayer>();
    }    private void Update()
    {
        // Press the Spacebar to pause the video if it's playing. 
        if (Input.GetKeyDown("space"))
        {
            // If the VideoPlayer is currently playing a video, pause the video. 
            if (videoPlayer.isPlaying)
            {
                videoPlayer.Pause(); 
            }
        }
    }
}
```
