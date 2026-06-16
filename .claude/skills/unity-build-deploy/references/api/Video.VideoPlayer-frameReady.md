<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer-frameReady.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The number of the frame that is ready (zero-based index). |

### Description

The VideoPlayer invokes this event when a new frame is ready to be displayed.

Use this event to:

- Analyze certain frames of a video.
- Track progress of the video.
- Play other effects such as animations or sound effects at a certain frame.

To enable this event so that the VideoPlayer emits it, set the VideoPlayer.sendFrameReadyEvents property to `true`. This event is likely to tax the CPU, so set VideoPlayer.sendFrameReadyEvents back to `false` when you don’t need it. 

The VideoPlayer also emits this event if you call VideoPlayer.Pause on a VideoPlayer that's not prepared yet or isn’t currently playing. When you call `Pause()` on a VideoPlayer that's not prepared or playing, it behaves as if you called `Play()` and then immediately called `Pause()`. This allows you to seek to a certain point in the video, and pause to give it time to prepare the frame before you play it.

```csharp
// This script plays some audio when the VideoPlayer reaches the frame ( targetFrame ) you set.  
// Make sure to assign a VideoPlayer component to your GameObject and assign an AudioSource in the Inspector. using UnityEngine;
using UnityEngine.UIElements;
using UnityEngine.Video;public class FrameReadyExample : MonoBehaviour
{
    VideoPlayer videoPlayer;
    public AudioSource audioSource;    // The frame you want to play the sound at (set this value in the Inspector). 
    public int targetFrame;    void Start()
    {
        videoPlayer = GetComponent<VideoPlayer>();        if (videoPlayer != null)
        {
            // Prepare the VideoPlayer to play the video. 
            videoPlayer.prepareCompleted += OnPrepareCompleted;
            videoPlayer.Prepare();
        }
        else
            Debug.LogWarning("Your GameObject doesn't have a VideoPlayer component.");
    }    void OnPrepareCompleted(VideoPlayer vp)
    {
        // Clamp targetFrame to be within the frame count of the video. 
        var totalFrames = videoPlayer.frameCount; 
        targetFrame = Mathf.Clamp(targetFrame, 0, (int)totalFrames - 1);        videoPlayer.sendFrameReadyEvents = true;
        // When frameReady event is invoked, call this function. 
        videoPlayer.frameReady += OnFrameReady;        videoPlayer.Play(); 
    }    void OnFrameReady(VideoPlayer vp, long frameToPlay)
    {
        Debug.Log("Frame " + frameToPlay + " is ready.");        // Play the audio when the VideoPlayer video reaches the target frame.
        if (frameToPlay == targetFrame)
        {
            if (audioSource != null)
            {
                audioSource.Play();
            }
            else
                Debug.LogWarning("AudioSource component is missing."); 
           
            videoPlayer.sendFrameReadyEvents = false;
        }
    }
}
```
