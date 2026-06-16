<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A UnityGUI event.

Events correspond to user input (key presses, mouse actions), or are UnityGUI layout or rendering events.

For each event MonoBehaviour.OnGUI is called in the scripts; so OnGUI is potentially called multiple times per frame. Event.current corresponds to "current" event inside OnGUI call.

Additional resources: GUI Scripting Guide, EventType.

### Static Properties

| Property | Description |
| --- | --- |
| current | The current event that's being processed right now. |

### Properties

| Property | Description |
| --- | --- |
| alt | Is Alt/Option key held down? (Read Only) |
| button | Which mouse button was pressed. |
| capsLock | Is Caps Lock on? (Read Only) |
| character | The character typed. |
| clickCount | How many consecutive mouse clicks have we received. |
| command | Is Command/Windows key held down? (Read Only) |
| commandName | The name of an ExecuteCommand or ValidateCommand Event. |
| control | Is Control key held down? (Read Only) |
| delta | The relative movement of the mouse compared to last event. |
| displayIndex | Index of display that the event belongs to. |
| functionKey | Is the current keypress a function key? (Read Only) |
| isKey | Is this event a keyboard event? (Read Only) |
| isMouse | Is this event a mouse event? (Read Only) |
| keyCode | The raw key code for keyboard events. |
| modifiers | Which modifier keys are held down. |
| mousePosition | The mouse position. |
| numeric | Is the current keypress on the numeric keyboard? (Read Only) |
| penStatus | Specifies the state of the pen. For example, whether the pen is in contact with the screen or tablet, whether the pen is inverted, and whether buttons are pressed. |
| pointerType | The type of pointer that created this event (for example, mouse, touch screen, pen). |
| pressure | How hard pen pressure is applied, normalized between 0 (no pressure) and 1 (maximum pressure). |
| shift | Is Shift held down? (Read Only) |
| tilt | Specifies the angle of the pen relative to the X and Y axes, expressed in radians. |
| twist | Specifies the rotation of the pen around its axis, expressed in radians. The default value is 0. |
| type | The type of event. |

### Public Methods

| Method | Description |
| --- | --- |
| GetTypeForControl | Get a filtered event type for a given control ID. |
| Use | Use this event. |

### Static Methods

| Method | Description |
| --- | --- |
| GetEventCount | Returns the current number of events that are stored in the event queue. |
| KeyboardEvent | Create a keyboard event. |
| PopEvent | Get the next queued [Event] from the event system. |
