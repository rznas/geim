<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoAudioOutputMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Places where the audio embedded in a video can be sent.

Use this enum to mute your audio, output your audio through Unity’s audio system, or output the audio directly to the audio hardware.

```csharp
// This script changes the audio output of a video when you press the Spacebar. 
// Attach this script, an AudioSource component and a VideoPlayer component to a GameObject in your Scene. 
// Assign a video clip to the VideoPlayer. 
// Edit the values of the AudioSource so that it edits the audio when it enters that mode. using UnityEngine;
using UnityEngine.Video;public class SwitchAudioOutputMode : MonoBehaviour
{
    VideoPlayer videoPlayer; 
    AudioSource audioSource; 
    private int currentAudioOutputMode = 0;     void Start()
    {
        videoPlayer = GetComponent<VideoPlayer>();
        audioSource = GetComponent<AudioSource>();        if (videoPlayer == null)
        {
            Debug.LogError("No VideoPlayer assigned!");
            return;
        }        // Set the initial audio output mode. 
        SetAudioOutputMode(VideoAudioOutputMode.None);        videoPlayer.Play();
    }    void Update()
    {
        // Press Spacebar to switch between modes
        if (Input.GetKeyDown(KeyCode.Space))
        {
            CycleAudioOutputMode();
        }
    }    private void CycleAudioOutputMode()
    {
        // Cycle through the VideoAudioOutputMode enum values. 
        currentAudioOutputMode = (currentAudioOutputMode + 1) % System.Enum.GetValues(typeof(VideoAudioOutputMode)).Length;        // Apply the new audio output mode. 
        SetAudioOutputMode((VideoAudioOutputMode)currentAudioOutputMode);
    }    private void SetAudioOutputMode(VideoAudioOutputMode audioOutputMode)
    {
        // Stop video before the audio output changes. 
        videoPlayer.Stop(); 
        videoPlayer.audioOutputMode = audioOutputMode;        switch (audioOutputMode)
        {
            // The video plays without audio. 
            case VideoAudioOutputMode.None:
                Debug.Log("Audio Output Mode: None");
                break;            // The video plays audio through an AudioSource. 
            case VideoAudioOutputMode.AudioSource:
                if (audioSource == null)
                {
                    Debug.LogError("AudioSource not assigned! Unable to set AudioSource mode.");
                    return;
                }                // Link the VideoPlayer to the AudioSource for playback.
                videoPlayer.SetTargetAudioSource(0, audioSource);
                Debug.Log("Audio Output Mode: AudioSource");
                break;                // Play the audio from the video unaltered. 
            case VideoAudioOutputMode.Direct:
                Debug.Log("Audio Output Mode: Direct");
                break;             
            case VideoAudioOutputMode.APIOnly:
                Debug.Log("Audio Output Mode: APIOnly (Raw audio samples exposed)");
                break;            default:
                Debug.LogError("Unexpected Audio Output Mode!");
                break;
        }        // Restart video playback with the new output mode. 
        videoPlayer.Play(); 
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| None | Disable the embedded audio. |
| AudioSource | Send the embedded audio into a specified AudioSource. |
| Direct | Send the embedded audio direct to the platform's audio hardware. |
| APIOnly | Send the embedded audio to the associated AudioSampleProvider. |
