<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.InputDevices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An interface for accessing devices in the XR input subsytem.

To route haptic feedback to XR input devices, specify an XRNode as the destination. This interface provides access to input devices using an XRNode. For example, use the use XRNode.LeftHand and XRNode.RightHand to access the left or right devices.

### Static Methods

| Method | Description |
| --- | --- |
| GetDeviceAtXRNode | Gets the input device at a given XRNode endpoint. |
| GetDevices | Gets a list of active input devices available to the XR Input Subsystem. |
| GetDevicesAtXRNode | Gets a list of active input devices available to the XR Input Subsystem at a given XRNode endpoint. |
| GetDevicesWithCharacteristics | Gets the list of active XR input devices that match the specified InputDeviceCharacteristics. |

### Events

| Event | Description |
| --- | --- |
| deviceConfigChanged | Defines the delegate to use to register events when an InputDevice's configuration changes. |
| deviceConnected | Defines the delegate to use to register events when an InputDevice is connected. |
| deviceDisconnected | Defines the delegate to use to register events when an InputDevice is disconnected. |
