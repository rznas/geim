<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRNode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enumeration of XR nodes which can be updated by XR input or sent haptic data.

**Note:** The types GameController, TrackingReference, and HardwareTracker are considered non-singleton nodes, as there can be many of each available. As a result, InputTracking.GetLocalPosition, and InputTracking.GetLocalRotation will not work with those values. Please use InputTracking.GetNodeStates instead. **Note:** Only XR nodes with valid haptic devices as endpoints can be sent haptic data.

### Properties

| Property | Description |
| --- | --- |
| LeftEye | Node representing the left eye. |
| RightEye | Node representing the right eye. |
| CenterEye | Node representing a point between the left and right eyes. |
| Head | Node representing the user's head. |
| LeftHand | Node representing the left hand. |
| RightHand | Node representing the right hand. |
| GameController | Represents a tracked game Controller not associated with a specific hand. |
| TrackingReference | Represents a stationary physical device that can be used as a point of reference in the tracked area. |
| HardwareTracker | Represents a physical device that provides tracking data for objects to which it is attached. |
