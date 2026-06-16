<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.HapticCapabilities.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes the haptic capabilities of the device at an XRNode in the XR input subsystem.

### Properties

| Property | Description |
| --- | --- |
| bufferFrequencyHz | The frequency (in Hz) that this device plays back buffered haptic data. |
| bufferMaxSize | The maximum amount of data that can be sent to an InputDevice via InputDevice.SendHapticBuffer. |
| bufferOptimalSize | The optimal buffer size an InputDevice expects to be sent via InputDevice.SendHapticBuffer in order to provide a continuous rumble between individual frames. |
| numChannels | The number of channels that this device plays back haptic data. |
| supportsBuffer | True if this device supports sending a haptic buffer. |
| supportsImpulse | True if this device supports sending a haptic impulse. |
