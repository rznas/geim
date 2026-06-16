<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.InputDevices-deviceDisconnected.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The InputDevice that just disconnected. |

### Description

Defines the delegate to use to register events when an InputDevice is disconnected.

This delegate allows you to receive device disconnection events, so you know when the list of devices changes.

**Note**: InputDevice.IsValid will be false for the passed-in device, and the only device data available will be InputDevice.name, InputDevice.role, and comparison against other InputDevice objects.
