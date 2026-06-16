<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Microphone.GetDeviceCaps.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| deviceName | The name of the device. |
| minFreq | Returns the minimum sampling frequency of the device. |
| maxFreq | Returns the maximum sampling frequency of the device. |

### Description

Get the frequency capabilities of a device.

Passing null or an empty string for the device name will select the default device. You can use the devices property to get a list of all available microphones.

When both `minFreq` and `maxFreq` parameters return `0`, the device supports any frequency.

**Note:** On Android and iOS, the returned values might not reflect the device's actual capabilities. The minimum and maximum frequencies are often reported as `16000` or `0` even when recording at other sample rates works. Use the returned values as a hint rather than a strict constraint on these platforms.
