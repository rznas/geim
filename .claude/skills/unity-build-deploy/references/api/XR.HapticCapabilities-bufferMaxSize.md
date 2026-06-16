<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.HapticCapabilities-bufferMaxSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum amount of data that can be sent to an InputDevice via InputDevice.SendHapticBuffer.

If the InputDevice receives an amount of data greater than this, then InputDevice.SendHapticBuffer fails and a rumble is not triggered. Check that the device supports haptic buffers via InputDevice.TryGetHapticCapabilities and HapticCapabilities.supportsBuffer. Will be set to 0 if HapticCapabilities.supportsBuffer is false.
