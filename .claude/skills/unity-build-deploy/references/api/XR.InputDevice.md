<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.InputDevice.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines an input device in the XR input subsystem.

To retrieve input features or route haptic feedback to XR input devices, specify an XRNode as the destination. Use XRNode.LeftHand and XRNode.RightHand to send haptic data to left or right devices. You can send haptic data either as an impulse or as a buffer of raw bytes that is played back through the haptic device. You can stop haptic output or query the device for its buffered capabilities at any time.

### Properties

| Property | Description |
| --- | --- |
| characteristics | Read Only. A bitmask of enumerated flags describing the characteristics of this InputDevice. |
| isValid | Read Only. True if the device is currently a valid input device; otherwise false. |
| manufacturer | The manufacturer of the connected Input Device. |
| name | Read Only. The name of the device in the XR system. This is a platform provided unique identifier for the device. |
| serialNumber | The serial number of the connected Input Device. Blank if no serial number is available. |
| subsystem | Gets the XRInputSubsystem that reported this InputDevice. |

### Public Methods

| Method | Description |
| --- | --- |
| SendHapticBuffer | Sends a raw buffer of haptic data to the device. |
| SendHapticImpulse | Sends a haptic impulse to a device. |
| StopHaptics | Stop all haptic playback for a device. |
| TryGetFeatureUsages | Gets a list of all the input feature usages available on this device. For example, "Trigger" or "Device Position". |
| TryGetFeatureValue | Retrieves information about the input feature specified by the Usage parameter. Those functions which take a time parameter allow querying for that feature at a particular point in time |
| TryGetHapticCapabilities | Gets the haptic capabilities of the device. |
