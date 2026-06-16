<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.TrackingOriginModeFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This enum provides context to where the 0,0,0 point of tracking for InputDevices is.

Each XRInputSubsystem has a single origin for all reported InputDevices. The origin can be relative to either real-world objects, such as a physical tracking device, or virtual objects, such as the center of a user-drawn bounding region.

### Properties

| Property | Description |
| --- | --- |
| Unknown | TrackingOriginModeFlags.Unknown enumerates when the XRInputSubsystem was not able to set its tracking origin or has no tracking. |
| Device | XRInputSubsystem tracks all InputDevices in reference to the first known location of a specific InputDevice when set to TrackingOriginModeFlags.Device. |
| Floor | XRInputSubsystem tracks all InputDevices in reference to a point on the floor when set to TrackingOriginModeFlags.Floor. |
| TrackingReference | XRInputSubsystem tracks all InputDevices in reference to an InputDevice with the InputDeviceCharacteristics.TrackingReference flag set when set to TrackingOriginModeFlags.TrackingReference. |
| Unbounded | XRInputSubsystem tracks all InputDevices in relation to a world anchor. This world anchor can change at any time, and is chosen by the runtime. |
