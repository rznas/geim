<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.InputDevice.SendHapticBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| channel | The channel to receive the data. |
| buffer | A raw byte buffer that contains the haptic data to send to the device. |

### Returns

**bool** Returns true if successful. Returns false otherwise.

### Description

Sends a raw buffer of haptic data to the device.

The buffered data plays at the sampleRate rate, represented by the frequencyHz value returned by a call to the TryGetCapabilities method, until it completes.

 **Note:** Not all devices support playing haptic buffers. To determine whether buffered haptics are supported, call the InputDevice.TryGetHapticCapabilities method and inspect the HapticCapabilities.supportsBuffer property. Also, the size of the buffer sent to the InputDevice must never be greater than HapticCapabilities.bufferMaxSize.
