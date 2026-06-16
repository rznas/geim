<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Audio.AudioSampleProvider.ConsumeSampleFrames.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sampleFrames | Buffer where the consumed samples will be transferred. |

### Returns

**uint** How many sample frames were written into the buffer passed in.

### Description

Consume sample frames from the internal buffer.

If Experimental.Audio.AudioSampleProvider.enableSilenacePadding is true, then the buffer passed in will be completely filled and padded with silence if there are less sample frames available than what the buffer can accommodate. Otherwise, the extra sample frames in the buffer will be left intact.
