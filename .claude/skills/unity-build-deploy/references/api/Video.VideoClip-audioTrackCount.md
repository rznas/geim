<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoClip-audioTrackCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the number of audio tracks that are embedded in the video clip. (Read Only).

A video clip can contain multiple audio tracks. It can have separate audio tracks for different languages, commentary, accessibility, or to separate music, sound effects and voices. This is useful because you can:

- Monitor the different audio tracks.
- Play certain tracks depending on the context or user’s choice.
- Change the volume on certain tracks.
- Mute certain tracks.

To enable or deactivate a certain audio track from the clip, use VideoPlayer.EnableAudioTrack.

Additional resources: VideoClip.GetAudioLanguage, VideoPlayer.EnableAudioTrack, VideoPlayer.SetDirectAudioMute, VideoPlayer.SetDirectAudioVolume.

```csharp
using UnityEngine;
using UnityEngine.Video;public class AudioTrackCountExample : MonoBehaviour
{
    VideoPlayer videoPlayer;    int currentTrack;    void Start()
    {
        videoPlayer = GetComponent<VideoPlayer>();
        VideoClip videoClip = videoPlayer.clip;        // Loop through all tracks and deactivate all except the first.
        for (ushort i = 1; i < videoClip.audioTrackCount; i++)
        {
            videoPlayer.EnableAudioTrack(i, false);
        }
        videoPlayer.Play();
    }    void Update()
    {
        // Press the Spacebar to change audio track. 
        if (Input.GetKeyDown(KeyCode.Space))
        {
            ChangeAudioTrack();
        }
    }    public void ChangeAudioTrack()
    {
        // VideoPlayer needs to stop before it can change track. 
        videoPlayer.Stop();        videoPlayer.EnableAudioTrack((ushort)currentTrack, false);
        currentTrack = (currentTrack + 1) % videoPlayer.audioTrackCount;
        videoPlayer.EnableAudioTrack((ushort)currentTrack, true);        videoPlayer.Play();
    }
}
```
