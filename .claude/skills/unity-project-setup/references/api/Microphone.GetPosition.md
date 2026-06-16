<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Microphone.GetPosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| deviceName | The name of the device. |

### Returns

**int** The current position in the recording buffer, in samples. To convert to seconds, divide by the clip's sample rate (frequency).

### Description

Get the current recording position in samples.

If you pass a null or empty string for the device name then the default microphone will be used. You can get a list of available microphone devices from the devices property.

You can use this to control latency. For example, to achieve roughly `30 ms` latency, poll `GetPosition` until the returned value advances by the number of samples that equal `30 ms` at the clip's sample rate. Then start playing the audio.
