<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSettings.Mobile.StopAudioOutput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stops audio thread on Android/iOS.

Has no effect if audio output thread is not running.

**Note**: When audio output thread is stopped AudioSource.time, AudioSource.timeSamples and AudioSettings.dspTime are not changing. At the same time AudioSource.isPlaying remains true if it was true before stopping audio output thread. Also MonoBehaviour.OnAudioFilterRead callback, Native Audio Plugins callbacks and Audio Spatializer callbacks are not being called.
