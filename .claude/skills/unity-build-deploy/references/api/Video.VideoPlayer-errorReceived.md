<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer-errorReceived.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The error message (string) the VideoPlayer reports. |

### Description

The VideoPlayer uses this callback to report various types of errors.

The types of errors the VideoPlayer reports include:

- HTTP connection problems.
- Issues finding the file.
- Unsupported file types.
- Permission issues.
- Runtime issues.

This is useful if you want to log errors and debug so that it’s easier to diagnose issues. You can also use it to implement fallback solutions, for example, you can display an error message or try to play an alternative video.

Additional resources: ErrorEventHandler.

```csharp
using UnityEngine;
using UnityEngine.Video;public class ErrorReceivedExample : MonoBehaviour
{
    public VideoPlayer videoPlayer;
    void Start()
    {
        videoPlayer = GetComponent<VideoPlayer>();
        if (videoPlayer != null)
        {
            // When the VideoPlayer detects an error, call this OnErrorReceived function. 
            videoPlayer.errorReceived += OnErrorReceived;
            videoPlayer.Play();
        }
    }    void OnErrorReceived(VideoPlayer vp, string message)
    {
        Debug.LogError("Error received: " + message);
    }
}
```
