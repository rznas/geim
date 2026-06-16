<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer-audioOutputMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Destination for the audio embedded in the video.

**Note:** WebGL only fully supports VideoAudioOutputMode.None and VideoAudioOutputMode.Direct. If you set the output mode to VideoAudioOutputMode.AudioSource, Unity ignores all AudioSource fields except mute. This is because 3D spatialization of video playback is not available on the web.
