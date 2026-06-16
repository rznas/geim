<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer-isPlaying.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns whether the VideoPlayer is currently playing the content.

This variable returns `false` if the video is paused. If you call VideoPlayer.Play, it might not always set `isPlaying` to `true`. The VideoPlayer must successfully prepare the content before it starts to play. To prepare the content before you use VideoPlayer.Play, use VideoPlayer.Prepare.

Additional resources: VideoPlayer.Play, VideoPlayer.isPaused, VideoPlayer.Pause.

```csharp
// In the Inspector of a GameObject, attach this script and a VideoPlayer component. using UnityEngine;
using UnityEngine.Video;public class IsPlayingExample: MonoBehaviour
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
            if(videoPlayer.isPlaying)
            {
                videoPlayer.Pause(); 
            }
        }
    }
}
```
