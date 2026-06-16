<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IKeyboardEvent-keyCode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The key code.

This is the code of the physical key that was pressed. It doesn't take into account the keyboard layout, and it displays modifier keys, since a key was pressed. For example, pressing the "A" key will cause this property to return KeyCode.A regardless of whether the Shift key is pressed or not. The Shift key itself returns KeyCode.LeftShift since it is a physical key on the keyboard.
