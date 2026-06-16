<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.KeyCombination.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a combination of a non-modifier key and zero or more modifier keys.

### Properties

| Property | Description |
| --- | --- |
| action | Is the action key modifier part of the key combination? The action key represents the Control key on Windows and Linux, and the Command key on macOS. |
| alt | Is the Alt key (or Option key on macOS) modifier part of the key combination? |
| control | Determines if the Control key modifier is part of the key combination. Represents the Control key on Windows, macOS, and Linux. |
| keyCode | Key code representing non-modifier key of key combination. |
| modifiers | Modifier keys of key combination. |
| shift | Is the Shift key modifier part of key combination? |

### Constructors

| Constructor | Description |
| --- | --- |
| KeyCombination | Creates a new key combination with given key code and shortcut modifiers. |

### Public Methods

| Method | Description |
| --- | --- |
| ToString | Returns string representation of key combination. |
