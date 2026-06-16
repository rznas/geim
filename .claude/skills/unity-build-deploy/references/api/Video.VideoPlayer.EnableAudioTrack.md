<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer.EnableAudioTrack.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| trackIndex | Index of the audio track to enable/disable. |
| enabled | `True` for enabling the track. `False` for disabling the track. |

### Description

Enable/disable audio track decoding. Only effective when the VideoPlayer is not currently playing.

Disabling audio tracks helps save processing resources by disabling audio decoding completely. This is different to muting a track during playback, which turns the audio track volume to 0 but still decodes the audio samples.
