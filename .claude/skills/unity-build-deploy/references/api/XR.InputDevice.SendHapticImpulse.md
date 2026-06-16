<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.InputDevice.SendHapticImpulse.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| channel | The channel to receive the impulse. |
| amplitude | The normalized (0.0 to 1.0) amplitude value of the haptic impulse to play on the device. |
| duration | The duration in seconds that the haptic impulse will play. Only supported on Oculus. |

### Returns

**bool** Returns true if successful. Returns false otherwise.

### Description

Sends a haptic impulse to a device.

Sends an impulse (amplitude and frequency) to a device.

 **Note:** Not all devices support all parameters (OpenVR currently only supports amplitude). To determine whether impulse haptics are supported, call the TryGetHapticCapabilities method and inspect the supportsImpulse property.
