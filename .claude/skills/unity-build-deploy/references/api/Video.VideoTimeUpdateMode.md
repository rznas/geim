<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoTimeUpdateMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the time source the VideoPlayer uses to update the timing of the video playback.

Use these settings to synchronize your video with audio, gameplay scaled time or unscaled time.

```csharp
// This script switches between the time update modes when you press the Spacebar.
// It also creates a slider that you can use to change the timescale of the game. 
// The changes are visible on your video when you enter the GameTime time update mode.// To set up your project for this script: 
// 1. Attach this script to a GameObject in your Scene. 
// 2. Add a VideoPlayer component to your GameObject.
// 3. Assign a VideoClip to your VideoPlayer. using UnityEngine;
using UnityEngine.Video;public class VideoRenderModeExample : MonoBehaviour
{
    VideoPlayer videoPlayer;
    
    void Start()
    {
        videoPlayer = GetComponent<VideoPlayer>();        // Make video play in background of Scene. 
        videoPlayer.renderMode = VideoRenderMode.CameraFarPlane;
        Camera mainCamera = Camera.main;
        videoPlayer.targetCamera = mainCamera;        // Loop the video.
        videoPlayer.isLooping = true;        // Play the video.
        videoPlayer.Play();
    }    private void OnGUI()
    {
        // Slider to alter the time scale of the game. 
        GUI.Label(new Rect(0, 20, 300, 300), $"Time scale: {Time.timeScale:F1}");
        Time.timeScale = GUI.HorizontalSlider(new Rect(100, 20, 300, 1000), Time.timeScale, 0.0f, 5.0f);
    }    private void Update()
    {
        // If you press the Spacebar, cycle through the time update modes.
        if (Input.GetKeyDown(KeyCode.Space))
        {
            VideoTimeUpdateMode currentVideoTimeUpdateMode = videoPlayer.timeUpdateMode;
            // Cycle through the enum values and loop back around. 
            int nextTimeUpdate = ((int)currentVideoTimeUpdateMode + 1) % System.Enum.GetValues(typeof(VideoTimeUpdateMode)).Length;            videoPlayer.timeUpdateMode = (VideoTimeUpdateMode)nextTimeUpdate;            Debug.Log($"Switched time update to: {videoPlayer.timeUpdateMode}");            if (!videoPlayer.isPlaying)
            {
                videoPlayer.Play();
            }
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| DSPTime | Update time based on the DSP (Digital Signal Processing) clock. Use this value to synchronize playback with Audio. |
| GameTime | Update the VideoPlayer's time based on Time.time. |
| UnscaledGameTime | Update the VideoPlayer's time based on Time.unscaledTime. |
