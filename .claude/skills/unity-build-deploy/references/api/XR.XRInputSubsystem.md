<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRInputSubsystem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

XRInputSubsystem Instance is used to enable and disable the inputs coming from a specific plugin.

Starting up an XRInputSubsystem Instance will cause that plugin to start feeding input device data to the following InputTracking systems: InputTracking.GetLocalPosition and InputTracking.GetLocalRotation. Calling the Stop or Shutdown functions will disable polling any input device data for that plugin.

### Public Methods

| Method | Description |
| --- | --- |
| GetSupportedTrackingOriginModes | Gets all TrackingOriginModeFlags that this subsystem supports. |
| GetTrackingOriginMode | Gets the Tracking Origin Mode. |
| TryGetBoundaryPoints | Gets the list of 3D position values that represents the SDK-set boundary. |
| TryGetInputDevices | Gets a list of all connected InputDevices reported by this XRInputSubsystem. |
| TryRecenter | Centers the tracking features on all InputDevices to the current position and orientation of the head-mounted device. |
| TrySetTrackingOriginMode | Attempts to set the TrackingOriginModeFlags of the subsystem. |

### Events

| Event | Description |
| --- | --- |
| boundaryChanged | An event that takes the delegate instance that the XRInputSubsystem calls when it changes its tracking boundary. |
| trackingOriginUpdated | An event that takes the delegate instance that the XRInputSubsystem calls when it changes the origin it reports devices at. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| running | Whether or not the subsystem is running. |

### Public Methods

| Method | Description |
| --- | --- |
| Destroy | Destroys this instance of a subsystem. |
| Start | Starts an instance of a subsystem. |
| Stop | Stops an instance of a subsystem. |
