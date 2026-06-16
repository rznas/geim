<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer.EventHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| source | The VideoPlayer that emits the event. |

### Description

Delegate type for all events without parameters emitted by VideoPlayers.

Use this EventHandler to define what you want to happen when the VideoPlayer emits certain events. This EventHandler accepts the following VideoPlayer events:

- VideoPlayer.loopPointReached
- VideoPlayer.started
- VideoPlayer.prepareCompleted
- VideoPlayer.seekCompleted

This EventHandler doesn't accept events that have parameters. 

Additional resources: For EventHandlers that can accept parameters, refer to VideoPlayer.ErrorEventHandler which handles VideoPlayer.errorReceived, VideoPlayer.FrameReadyEventHandler which handles VideoPlayer.frameReady, and VideoPlayer.TimeEventHandler.

```csharp
// This script sets up a generic EventHandler to process a few different parameter-less events from the VideoPlayer. using UnityEngine;
using UnityEngine.Video;public class EventHandlerExample : MonoBehaviour
{
    public VideoPlayer videoPlayer;
    void Start()
    {
        videoPlayer = GetComponent<VideoPlayer>();        // Define a generic EventHandler for events that have the same signature.
        VideoPlayer.EventHandler eventHandler = OnVideoPlayerEvent;        // Assign the generic EventHandler to manage multiple VideoPlayer events. 
        videoPlayer.prepareCompleted += eventHandler;
        videoPlayer.started += eventHandler;
        videoPlayer.loopPointReached += eventHandler;
        videoPlayer.seekCompleted += eventHandler;        videoPlayer.Prepare();
    }    // All those events will invoke this same function and be handled the same way. 
    private void OnVideoPlayerEvent(VideoPlayer vp)
    {
        Debug.Log("An event occurred on VideoPlayer.");
    }
}
```
