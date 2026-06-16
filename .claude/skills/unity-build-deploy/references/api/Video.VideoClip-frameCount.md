<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoClip-frameCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The length of the video clip in frames. (Read Only).

It’s useful to know the length of a video in frames to ensure any effects you play on a video play within the time frame of the video. VideoClip extracts the frame count from the metadata of the file. 

**Note**: The length VideoClip returns can be inaccurate as the external encoder can be imprecise. Use VideoPlayer.frameCount to get a more accurate value. However, VideoPlayer.frameCount becomes more precise after one playthrough, so won’t be completely accurate until after the clip finishes once. 

 Additional resources: VideoPlayer.frameRate, VideoPlayer.frameCount.

```csharp
// This script uses both the VideoPlayer and VideoClip components' frame count and frame rate
// to calculate the length of the video in seconds. Sometimes this can return different results, 
// but the VideoPlayer is more accurate, especially after a full playthrough.
// The script recalculates the counts on each loop. using UnityEngine;
using UnityEngine.Video;public class VideoClipLengthCalculator : MonoBehaviour
{
    VideoPlayer videoPlayer;    void Start()
    {
        if (videoPlayer != null)
        {
            videoPlayer = GetComponent<VideoPlayer>();
            videoPlayer.isLooping = true;
            VideoClip videoClip = videoPlayer.clip;            if (videoClip != null)
            {
                CalculateVideoLength(videoClip);
                videoPlayer.loopPointReached += OnLoop;
                videoPlayer.Play();
            }
            else
            {
                Debug.LogWarning("VideoClip is not assigned.");
            }
        }
        else
        {
            Debug.LogWarning("VideoPlayer is not assigned.");
        }
    }    void CalculateVideoLength(VideoClip clip)
    {
        // Get frame count and frame rate from the VideoClip. 
        ulong videoClipFrameCount = clip.frameCount;
        double videoClipFrameRate = clip.frameRate;        // Calculate the length in seconds (VideoClip) and output to console. 
        double videoClipLengthInSeconds = videoClipFrameCount / videoClipFrameRate; 
        Debug.Log($"Calculated VideoClip length: {videoClipLengthInSeconds} seconds.");        // Get frame count and frame rate from the VideoPlayer. 
        ulong videoPlayerFrameCount = videoPlayer.frameCount;
        double videoPlayerFrameRate = videoPlayer.frameRate;        // Calculate the length in seconds (VideoPlayer) and output to console. 
        double videoPlayerLengthInSeconds = videoPlayerFrameCount / videoPlayerFrameRate;
        Debug.Log($"Calculated VideoPlayer Length: {videoPlayerLengthInSeconds} seconds.");    }    void OnLoop(VideoPlayer vp)
    {
        // Recalculate the video length after loop happens. 
        CalculateVideoLength(vp.clip);
    }
}
```
