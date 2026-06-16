<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoAudioOutputMode.APIOnly.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Send the embedded audio to the associated AudioSampleProvider.

Use this setting if you want to use Unity scripting to alter the video’s raw audio data. This is useful if you want direct, low-level control over the audio, or to analyse the data. Since the audio data goes through scripts instead of to the system's speakers or an Audio Mixer, the audio won't automatically play or be heard by the user. Therefore, if you want audio playback, you need to implement a way to process and output the data to suit your needs (via third-party plugins or custom implementations.
