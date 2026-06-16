<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.KeyboardNavigationOperation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an operation that the user is trying to accomplish through a specific input mechanism.

Tests the received callback value for KeyboardNavigationManipulator against the values of this enum to implement the operation in your UI.

### Properties

| Property | Description |
| --- | --- |
| None | Default value. Indicates an uninitialized enum value. |
| SelectAll | Selects all UI selectable elements or text. |
| Cancel | Cancels the current UI interaction. |
| Submit | Submits or concludes the current UI interaction. |
| Previous | Moves up to the previous item. |
| Next | Moves down to the next item. |
| MoveRight | Moves to the right. |
| MoveLeft | Moves to the left. |
| PageUp | Moves the selection up one page (in a list that has a scrollable area). |
| PageDown | Moves the selection down one page (in a list that has a scrollable area). |
| Begin | Selects the first element. |
| End | Selects the last element. |
