<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoClip.GetAudioChannelCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| audioTrackIdx | Use this index to specify which audio track in the video to use. |

### Returns

**ushort** The number of channels.

### Description

Returns the number of channels in the audio track. For example, if the audio track is a stereo track, this function returns 2.

Video files can have multiple audio tracks for various reasons. For example, they can use different tracks to separate:

- different languages.
- accessibility options.
- high sampling from low sampling tracks.
- music from sound effects.
- sounds with different channel counts.

This function lets you specify an audio track within a video clip to check the channel counts of each one. 

The following are further examples of track types and what this function returns for each type:

- Mono returns `1`.
- Stereo returns `2`.
- Surround sound returns `3` for 2.1, `6` for 5.1, or `8` for 7.1.

This function is useful because you can use the channel count to adapt to different video clips with different audio qualities.

Additional resources: VideoPlayer.GetAudioChannelCount, VideoPlayer.EnableAudioTrack, VideoClip.GetAudioLanguage, VideoPlayer.GetAudioSampleRate.

```csharp
// This script cycles through a video clip's audio tracks, enables tracks that have 2 channels, and deactivates others. 
// Assign this script and a VideoPlayer component to a GameObject in your Scene.
// Then assign a video to the VideoPlayer in the Inspector. using UnityEngine;
using UnityEngine.Video;public class AudioChannelCountExample : MonoBehaviour
{
    void Start()
    {
        VideoPlayer videoPlayer;
        VideoClip videoClip;
        // The amount of channels you want your audio track to have. 
        int preferredAudioChannel = 2;        videoPlayer = GetComponent<VideoPlayer>();
        if(videoPlayer != null )
        {
            videoClip = videoPlayer.clip;
            
            if (videoClip != null)
            {
                // Get the number of audio tracks in the VideoClip.
                int audioTrackCount = videoClip.audioTrackCount;                // Loop through each audio track and get the number of channels.
                for (ushort i = 0; i < audioTrackCount; i++)
                {
                    ushort channelCount = videoClip.GetAudioChannelCount(i);                    // Enable the track if it has your preferred audio channel count. 
                    if (channelCount == preferredAudioChannel)
                    {
                        videoPlayer.EnableAudioTrack(i, true);
                        Debug.Log("Enabled audio track " + i + " because it has " + channelCount + " channels.");
                    }
                    // Otherwise, deactivate the track. 
                    else
                    {
                        videoPlayer.EnableAudioTrack(i, false);
                        Debug.Log("Deactivated audio track " + i + " because it has " + channelCount + " channels.");
                    }
                }
                videoPlayer.Play();
            }
            else
            {
                Debug.LogError("No VideoClip assigned to VideoPlayer.");
            }        }
        else
        {
            Debug.LogError("No VideoPlayer assigned to GameObject.");
        }
    }
}
```
