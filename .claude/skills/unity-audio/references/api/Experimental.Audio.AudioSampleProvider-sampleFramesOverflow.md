<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Audio.AudioSampleProvider-sampleFramesOverflow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The number of sample frames that were dropped due to the overflow. |

### Description

Invoked when the number of available sample frames goes beyond the maximum that fits in the internal buffer.

This event cannot be disabled like the sample frames available counterpart. It is not expected to be frequently emitted so it is not an important source of overhead.
