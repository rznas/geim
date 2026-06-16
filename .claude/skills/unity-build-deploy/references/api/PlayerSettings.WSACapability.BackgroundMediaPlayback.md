<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WSACapability.BackgroundMediaPlayback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows your application to continue media playback while the application is in the background.

Enabling this option changes the behavior of media-specific APIs like the [MediaPlayer](https://docs.microsoft.com/en-us/uwp/api/Windows.Media.Playback.MediaPlayer?redirectedfrom=MSDN&view=winrt-19041) and [AudioGraph](https://docs.microsoft.com/en-us/uwp/api/Windows.Media.Audio.AudioGraph?redirectedfrom=MSDN&view=winrt-19041) classes to enable media playback while your application is in the background. If the application moves to the background, all active audio streams from the application continue to be audible. Additionally, the application lifetime extends while the audio plays.
