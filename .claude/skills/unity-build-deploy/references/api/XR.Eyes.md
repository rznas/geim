<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.Eyes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains eye tracking data from the device at an XRNode in the XR input subsystem.

Represents eye tracking data collected by the device. The Eyes type contains eye position, rotation, and data indicating the eye fixation point and blink values for both the left and right eye. All eye spatial information is in the Unity coordinate space.

### Public Methods

| Method | Description |
| --- | --- |
| TryGetFixationPoint | Gets the point represents the convergence of the line of sight for both eyes. |
| TryGetLeftEyeOpenAmount | Gets a value that represents the how far the left eye is open. |
| TryGetLeftEyePosition | Gets the Vector3 that describes the position of the left eye. |
| TryGetLeftEyeRotation | Gets the Quaternion that describes the rotation of the left eye. |
| TryGetRightEyeOpenAmount | Gets a value that represents the how far the right eye is open. |
| TryGetRightEyePosition | Gets the Vector3 that describes the position of the right eye. |
| TryGetRightEyeRotation | Gets the Quaternion that describes the rotation of the right eye. |
