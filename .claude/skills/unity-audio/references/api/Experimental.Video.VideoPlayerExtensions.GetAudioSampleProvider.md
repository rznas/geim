<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Video.VideoPlayerExtensions.GetAudioSampleProvider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vp | The "this" pointer for the extension method. |
| trackIndex | The audio track index for which the sample provider is queried. |

### Returns

**AudioSampleProvider** The sample provider for the specified track.

### Description

Return the AudioSampleProvider for the specified track, used to receive audio samples during playback.

The sample provider can only be obtained when VideoPlayer.audioOutputMode is set to VideoAudioOutputMode.APIOnly.
