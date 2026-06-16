<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer.Prepare.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Prepares the playback engine so that it's ready for playback.

To prepare, the playback engine reserves the resources vital for playback, and preloads some of the content to be played. If the preparation succeeds, this method emits the VideoPlayer.prepareCompleted event and sets VideoPlayer.isPrepared to `true`. The VideoPlayer is then ready to display the frames immediately and you can access all properties related to the source. 

If you don't prepare the VideoPlayer before you play a video, the VideoPlayer.Play method will do the preparation but the video won't play instantly. If you use VideoPlayer.Stop, the VideoPlayer becomes unprepared again because it frees its resources for performance reasons. To halt a video but keep its preparation, use VideoPlayer.Pause instead. 

Additional resources: VideoPlayer.isPrepared.

```csharp
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Video;
 
// The button to play the video in the script only becomes interactable after the preparation is finished.
// To start the preparation process, press the Space key in Play mode. // Attach this script to the GameObject you want to play a video clip on. 
// Attach a VideoPlayer component with a video clip and assign a UI Button in the Inspector.public class PrepareExample: MonoBehaviour
{
    VideoPlayer videoPlayer;
    public Button playButton;    private void Awake()
    {
        // Get the VideoPlayer component attached to GameObject with this script attached.  
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
        if(videoPlayer.isPrepared)
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
