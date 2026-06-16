<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Audio.AudioSampleProvider-freeSampleFrameCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Number of sample frames that can still be written to by the sample producer before overflowing.

Letting the internal buffer overflow will emit the AudioSampleProvider.sampleFramesOverflow event and invoke the associated native handler set with AudioSampleProvider.SetSampleFramesOverflowNativeHandler.
