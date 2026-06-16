<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoTimeReference.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The clock that the VideoPlayer observes to detect and correct drift.

Use these settings to control how the playback time of the video is synchronized with time sources.

```csharp
// This script changes the video playback speed based on a custom timer. 
// Attach this script and a VideoPlayer component to a GameObject in your Scene. 
// Assign a video clip to the VideoPlayer. using UnityEngine;
using UnityEngine.Video;public class VideoTimeReferenceExample : MonoBehaviour
{
    VideoPlayer videoPlayer; 
    float customExternalTime = 0.0f;
    float timeSlider = 1.0f;    private void OnGUI()
    {
        // Create a slider you can use to change the playback speed. 
        GUI.Label(new Rect(0, 0, 300, 300),$"Time scale : {timeSlider}");
        timeSlider = GUI.HorizontalSlider(new Rect(0, 30, 300, 300), timeSlider, 1.0f, 3.0f);
    }    void Start()
    {
        videoPlayer = GetComponent<VideoPlayer>();
        if (!videoPlayer)
        {
            Debug.LogError("VideoPlayer not assigned!");
            return;
        }        // Set default time reference to External time. 
        videoPlayer.timeReference = VideoTimeReference.ExternalTime;
        videoPlayer.Play();
    }    void Update()
    {
        // Increment custom time manually. 
        customExternalTime += timeSlider * Time.deltaTime;
        videoPlayer.externalReferenceTime = customExternalTime;
    }}
```

### Properties

| Property | Description |
| --- | --- |
| Freerun | The video plays without influence from external time sources. |
| InternalTime | The internal reference clock the VideoPlayer observes to detect and correct drift. |
| ExternalTime | The external reference clock the VideoPlayer observes to detect and correct drift. |
