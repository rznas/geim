<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IMouseEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for mouse events.

Refer to the Mouse events manual page for more information and examples.

### Properties

| Property | Description |
| --- | --- |
| actionKey | Returns true if the platform-specific action key is pressed. |
| altKey | Return true if the Alt key is pressed. |
| button | A value that indicates which mouse button was pressed or released (if any) to cause this event: 0 is the left button, 1 is the right button, 2 is the middle button. A negative value indicates that no mouse button changed state during this event. |
| clickCount | The number of times a button is pressed consecutively. |
| commandKey | Return true if the Windows/Command key is pressed. |
| ctrlKey | Return true if the Ctrl key is pressed. |
| localMousePosition | The mouse position in the current target coordinate system. |
| modifiers | Flag set holding the pressed modifier keys (Alt, Ctrl, Shift, Windows/Command). |
| mouseDelta | Gets the difference between the mouse's position during the previous mouse event and its position during the current mouse event. |
| mousePosition | The mouse position in the panel coordinate system. |
| pressedButtons | A bitmask that describes the currently pressed buttons. |
| shiftKey | Return true if the Shift key is pressed. |
