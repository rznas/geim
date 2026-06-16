<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer-isPrepared.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns whether the VideoPlayer has successfully prepared the content to be played.

A prepared VideoPlayer can play back the content instantly because preliminary parsing and buffering has been done.

A VideoPlayer starts out as not prepared (`false`). To prepare the VideoPlayer, you need to use VideoPlayer.Prepare. When preparation is done, the VideoPlayer emits the VideoPlayer.prepareCompleted event, which sets `isPrepared` to `true`. 

The property goes back to `false` when you or the VideoPlayer calls VideoPlayer.Stop.

If there are preparation failures, this property might never be set to `true`. In this case, Unity sends an error description through the VideoPlayer.errorReceived event.

Additional resources: VideoPlayer.Prepare.

```csharp
using UnityEngine;
using UnityEngine.Video;
using System.Collections;// In the Inspector of your GameObject, attach this script and a VideoPlayer component. 
// Also, assign a VideoClip to your VideoPlayer component.  
// Use this script to prepare a video.  public class IsPreparedExample : MonoBehaviour
{
    public IEnumerator Start()
    {
        VideoPlayer videoPlayer = GetComponent<VideoPlayer>();
        videoPlayer.Prepare();
        // Loops until the video is ready.
        // Then outputs the message to the console when the preparation is done. 
        while (!videoPlayer.isPrepared)
        {
            yield return null;
        }
        Debug.Log("Preparation completed!");
    }
}
```
