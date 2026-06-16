<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer.Play.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Starts or resumes the playback of a video.

If the video isn't prepared, this method will prepare the video before it starts playback, but playback won't be instant. To make playback instant, use VideoPlayer.Prepare and wait for preparation to finish (when VideoPlayer.prepareCompleted fires), before you use this method.

If you use VideoPlayer.Prepare and then play the video before preparation finishes, the VideoPlayer will finish preparation and then play the video. 

Additional resources: VideoPlayer.isPlaying, VideoPlayer.Pause, VideoPlayer.started.

```csharp
using UnityEngine;
using UnityEngine.Video;public class PlayExample : MonoBehaviour
{
    void Start()
    {
        // Get the VideoPlayer attached to this GameObject.
        // You need to attach a VideoPlayer component in the Inspector for this script to work. 
        var videoPlayer = GetComponent<VideoPlayer>();        videoPlayer.Play();    }
}
```
