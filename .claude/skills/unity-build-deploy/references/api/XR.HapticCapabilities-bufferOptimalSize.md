<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.HapticCapabilities-bufferOptimalSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The optimal buffer size an InputDevice expects to be sent via InputDevice.SendHapticBuffer in order to provide a continuous rumble between individual frames.

Check that the device supports haptic buffers via InputDevice.TryGetHapticCapabilities and HapticCapabilities.supportsBuffer. Will be set to 0 if HapticCapabilities.supportsBuffer is false.
