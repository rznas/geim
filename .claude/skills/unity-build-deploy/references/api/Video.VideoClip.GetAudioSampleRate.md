<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoClip.GetAudioSampleRate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| audioTrackIdx | Index of the audio queried audio track. |

### Returns

**uint** The sampling rate in hertz.

### Description

Get the audio track sampling rate in hertz (Hz).

The audio sampling rate is the number of times per second a sample of audio is captured. Higher sample rates usually result in more realistic sounds and better sound quality, but files are larger. This is useful to know so that you can cater your audio to different devices. A VideoClip could have multiple audio tracks for different quality levels, which you can change depending on the device.

Additional resources: VideoPlayer.EnableAudioTrack.

```csharp
using UnityEngine;
using UnityEngine.Video;public class AudioSampleRateExample : MonoBehaviour
{
    VideoPlayer videoPlayer;    void Start()
    {
        videoPlayer = GetComponent<VideoPlayer>();
        // Get the VideoClip from the VideoPlayer
        VideoClip clip = videoPlayer.clip;        if (clip != null)
        {
            // Get the number of audio tracks in the VideoClip
            int audioTrackCount = clip.audioTrackCount;            // Loop through each audio track and output their audio sample rate. 
            for (ushort i = 0; i < audioTrackCount; i++)
            {
                Debug.Log("Audio track " + i + " has the following audio sampling rate: " + clip.GetAudioSampleRate(i));
            }
        }
        else
        {
            Debug.LogError("No VideoClip assigned to the VideoPlayer.");
        }
    }
}
```
