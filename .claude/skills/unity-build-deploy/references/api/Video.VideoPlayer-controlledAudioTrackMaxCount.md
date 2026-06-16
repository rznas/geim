<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer-controlledAudioTrackMaxCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Maximum number of audio tracks that can be controlled. (Read Only)

When playing audio from a URL, the number of audio tracks is not known in advance. It is up to the user to specify the number of controlled audio tracks through VideoPlayer.controlledAudioTrackCount. Other tracks will be ignored and silenced. In this scenario, VideoPlayer.audioTrackCount will be set to the actual number of tracks during playback, after preparation is complete.

Additional resources: VideoPlayer.Prepare.
