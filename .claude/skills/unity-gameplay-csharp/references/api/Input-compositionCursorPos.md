<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input-compositionCursorPos.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current text input position used by IMEs to open windows.

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

Some language IMEs such as Japanese will open windows while the user is typing text, to aid the user in picking the correct input strings. These windows are expected to pop up at the current cursor position, so the IME needs to know where input is displayed. When using Unity's built in GUI system for text input, Unity will take care of setting the cursor position for the IME. However, if you wish to implement your own GUI for text input, you need to set this to the current text input position for IME windows to show up correctly. Additional resources: Input.imeCompositionMode, Input.compositionString.
