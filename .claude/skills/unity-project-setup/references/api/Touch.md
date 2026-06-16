<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Touch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Structure describing the status of a finger touching the screen.

Devices can track a number of different pieces of data about a touch on a touchscreen, including its `phase` of the touch lifecycle, its position and whether the touch was a single contact or several taps. Furthermore, the continuity of a touch between frame updates can be detected by the device, so a consistent ID number can be reported across frames and used to determine how a particular finger is moving.

The touch lifecycle describes the state of a touch in any given frame:

- Began - A user has touched their finger to the screen this frame
- Stationary - A finger is on the screen but the user has not moved it this frame
- Moved - A user moved their finger this frame
- Ended - A user lifted their finger from the screen this frame
- Cancelled - The touch was interrupted this frame

The Touch struct is used by Unity to store data relating to a single touch instance and is returned by the Input.GetTouch function. Fresh calls to GetTouch will be required on each frame update to obtain the latest touch information from the device but the fingerId property can be used to identify the same touch between frames.

**Note**: On iOS devices, any Touch information that is being held in memory (for example, when you are part way through the touch lifecycle) will be lost if the application is minimized. This happens because iOS calls ResetTouch() and wipes all touch data from memory. The lifecycle of that touch ends there and any functionality that relies on later phases of the touch lifecycle is not executed. If you experience this problem, you should move the functionality that is not being executed into MonoBehaviour.OnApplicationFocus or MonoBehaviour.OnApplicationPause.

Additional resources: Input.GetTouch, TouchPhase enum.

### Properties

| Property | Description |
| --- | --- |
| altitudeAngle | Value of 0 radians indicates that the stylus is parallel to the surface, pi/2 indicates that it is perpendicular. |
| azimuthAngle | Value of 0 radians indicates that the stylus is pointed along the x-axis of the device. |
| deltaPosition | The position delta since last change in pixel coordinates. |
| deltaTime | Amount of time that has passed since the last recorded change in Touch values. |
| fingerId | The unique index for the touch. |
| maximumPossiblePressure | The maximum possible pressure value for a platform. If Input.touchPressureSupported returns false, the value of this property will always be 1.0f. |
| phase | Describes the phase of the touch. |
| position | The position of the touch in screen space pixel coordinates. |
| pressure | The current amount of pressure being applied to a touch. 1.0f is considered to be the pressure of an average touch. If Input.touchPressureSupported returns false, the value of this property will always be 1.0f. |
| radius | An estimated value of the radius of a touch. Add radiusVariance to get the maximum touch size, subtract it to get the minimum touch size. |
| radiusVariance | This value determines the accuracy of the touch radius. Add this value to the radius to get the maximum touch size, subtract it to get the minimum touch size. |
| rawPosition | The first position of the touch contact in screen space pixel coordinates. |
| tapCount | Number of taps. |
| type | A value that indicates whether a touch was of Direct, Indirect (or remote), or Stylus type. |
