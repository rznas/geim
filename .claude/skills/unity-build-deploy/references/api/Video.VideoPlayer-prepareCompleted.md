<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer-prepareCompleted.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The instance of the VideoPlayer that invoked the event. |

### Description

The VideoPlayer invokes this event when the video is ready for playback.

The VideoPlayer uses VideoPlayer.Prepare to ready a video for playback. When the preparation finishes, the VideoPlayer invokes this callback. If you start playback after this callback is invoked, frames become available instantly. If you call VideoPlayer.Play without using VideoPlayer.Prepare first, the VideoPlayer invokes `Prepare()` anyway. If preparation succeeds, the VideoPlayer still invokes this event.

Additional resources: VideoPlayer.Prepare, EventHandler.

```csharp
// In this script, you can only interact with the button to play the video after the VideoPlayer 
// finishes its preparation of the video. To start the preparation process, press Spacebar in Play mode. // Attach this script to the GameObject you want to play a video clip on. 
// Attach a VideoPlayer component with a video clip and assign a Button in the Inspector.using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Video;public class PrepareExample: MonoBehaviour
{
    VideoPlayer videoPlayer;
    public Button playButton;    private void Awake()
    {
        // Get the VideoPlayer component from GameObject with this script attached.  
        videoPlayer = GetComponent<VideoPlayer>();
        // Attach the event handler, which triggers when the VideoPlayer finishes its preparation. 
        videoPlayer.prepareCompleted += OnPrepareCompleted;
        videoPlayer.playOnAwake = false;
        playButton.interactable = false;
    }    // Event handler for when VideoPlayer finishes the preparation process. 
    void OnPrepareCompleted(VideoPlayer vp)
    {
        Debug.Log("Preparation complete. You can now play the video.");
        
        // Preparation is complete so allow interactions with the play button. 
        playButton.interactable = true;
        playButton.onClick.AddListener(OnPlayButtonClicked);
    }    void OnPlayButtonClicked()
    {
        // If the play button is clicked and the preparation is done, play the video. 
        if (videoPlayer.isPrepared)
        {
            videoPlayer.Play();
        }
    }    private void Update()
    {
        // Press Spacebar to prepare the video. 
        if (Input.GetKeyDown("space"))
        {
            if (!videoPlayer.isPrepared)
            {
                videoPlayer.Prepare(); 
            }
        }
    }
}
```
