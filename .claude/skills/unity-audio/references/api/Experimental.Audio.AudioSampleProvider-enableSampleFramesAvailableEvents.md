<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Audio.AudioSampleProvider-enableSampleFramesAvailableEvents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables the AudioSampleProvider.sampleFramesAvailable events.

Depending on how often audio sample frames are drained, the sampleFramesAvailable events may be produced at a high rate. Producing these events may cause a unwanted overhead even if they are not monitored, so they can be disabled.

When sample frames are consumed from a native plug-in, consider using the associated native event handler set via Experimental.Audio.AudioSampleProvider.SetSampleFramesAvailableNativeEventHandler.
