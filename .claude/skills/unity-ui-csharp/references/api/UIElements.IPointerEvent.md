<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IPointerEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This interface describes properties available to pointer events.

Refer to the Pointer events manual page for more information and examples.

### Properties

| Property | Description |
| --- | --- |
| actionKey | Gets a boolean value that indicates whether the platform-specific action key is pressed. |
| altitudeAngle | Gets the angle of the stylus relative to the surface, in radians |
| altKey | Gets a boolean value that indicates whether the Alt key is pressed. |
| azimuthAngle | Gets the angle of the stylus relative to the x-axis, in radians. |
| button | Gets a value that indicates which mouse button was pressed or released (if any) to cause this event: 0 is the left button, 1 is the right button, 2 is the middle button. A negative value indicates that no mouse button changed state during this event. |
| clickCount | Gets the number of consecutive times a down-up sequence was executed in a short amount of time with the same pointer ID and button. |
| commandKey | Gets a boolean value that indicates whether the Windows/Cmd key is pressed. |
| ctrlKey | Gets a boolean value that indicates whether the Ctrl key is pressed. |
| deltaPosition | Gets the difference between the pointer's position during the previous pointer event and its position during the current pointer event. |
| deltaTime | Gets the amount of time that has elapsed since the last recorded change in pointer values, in seconds. |
| isPrimary | Gets a boolean value that indicates whether the pointer is a primary pointer. True means the pointer is a primary pointer. False means it isn't. |
| localPosition | Gets the pointer position in the current target's coordinate system. |
| modifiers | Gets flags that indicate whether modifier keys (Alt, Ctrl, Shift, Windows/Cmd) are pressed. |
| penStatus | Specifies the state of the pen. For example, whether the pen is in contact with the screen or tablet, whether the pen is inverted, and whether buttons are pressed. On macOS, penStatus will not reflect changes to button mappings. |
| pointerId | Gets the identifier of the pointer that sends the event. |
| pointerType | Gets the type of pointer that created the event. |
| position | Gets the pointer position in the panel coordinate system. |
| pressedButtons | Gets a bitmask that describes the buttons that are currently pressed. |
| pressure | Gets the amount of pressure currently applied by a touch. |
| radius | Gets an estimate of the radius of a touch. |
| radiusVariance | Gets the accuracy of the touch radius. |
| shiftKey | Gets a boolean value that indicates whether the Shift key is pressed. |
| tangentialPressure | Gets the pressure applied to an additional pressure-sensitive control on the stylus. |
| tilt | Specifies the angle of the pen relative to the X and Y axis respectively, in radians. |
| twist | Gets the rotation of the stylus around its axis, in radians. |
