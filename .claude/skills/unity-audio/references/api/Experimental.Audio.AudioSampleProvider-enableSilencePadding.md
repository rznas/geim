<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Audio.AudioSampleProvider-enableSilencePadding.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If true, buffers produced by ConsumeSampleFrames will get padded when silence if there are less available than asked for. Otherwise, the extra sample frames in the buffer will be left unchanged.

Without silence padding, AudioSampleProvider.ConsumeSampleFrames will return how many sample frames of the buffer passed were acutally written to, using the available sample frames, and the rest of the buffer will be left intact.

With silence padding enabled, the method will completely fill the buffer passed in and provide silence if needed, in case there were not enough available sample frames.
