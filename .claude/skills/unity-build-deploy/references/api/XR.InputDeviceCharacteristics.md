<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.InputDeviceCharacteristics.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A set of bit flags describing InputDevice characteristics.

The XR system combines the **InputDeviceFlags** members into the InputDevice.characteristics bitmask to describe the characteristics and capabilities of an input device. You can also pass a bitwise combination of flags from this enumeration to InputDevices.GetDevicesWithCharacteristics to get a list of devices with specific characteristics. For example, you could use the following to get the right-hand controller:

`(InputDeviceCharacteristics.HeldInHand | InputDeviceCharacteristics.Right)`.

### Properties

| Property | Description |
| --- | --- |
| None | A default value specifying no flags. |
| HeadMounted | The InputDevice is attached to the head. |
| Camera | The InputDevice has a camera and associated camera tracking information. |
| HeldInHand | The InputDevice is held in the user's hand. Typically, a tracked controller. |
| HandTracking | The InputDevice provides hand tracking information via a Hand input feature. |
| EyeTracking | The InputDevice provides eye tracking information via an Eyes input feature. |
| TrackedDevice | The InputDevice provides 3DOF or 6DOF tracking data. |
| Controller | The InputDevice is a game controller. |
| TrackingReference | The InputDevice is an unmoving reference object used to locate and track other objects in the world. |
| Left | The InputDevice is associated with the left side of the user. |
| Right | The InputDevice is associated with the right side of the user. |
| Simulated6DOF | The InputDevice reports software approximated, positional data. |
