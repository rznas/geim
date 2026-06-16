<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.ModalWindow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | A unique id number. |
| clientRect | Position and size of the window. |
| func | A function which contains the immediate mode GUI code to draw the contents of your window. |
| text | Text to appear in the title-bar area of the window, if any. |
| image | An image to appear in the title bar of the window, if any. |
| content | GUIContent to appear in the title bar of the window, if any. |
| style | Style to apply to the window. |

### Description

Show a Modal Window.

Similar to GUI.Window, however the window will always be on top of all other GUI, and while displayed, is guaranteed to be sole recipient of all GUI input and events. While a ModalWindow is being displayed, other controls will not be processing input. Note that only one ModalWindow can be displayed at a time.
