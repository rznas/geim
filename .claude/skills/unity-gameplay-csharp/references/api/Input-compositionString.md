<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input-compositionString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current IME composition string being typed by the user.

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

In some languages such as Chinese, Japanese or Korean, text is input by typing multiple keys to generate one or multiple characters. These characters are visually composed on the screen as the user types. When using Unity's built in GUI system for text input, Unity will take care of displaying the composition strings as the users types. If you want to implement your own GUI, however, you need to take care of displaying the string at the current cursor position. The composition string is only updated when IME compositing is used. See Input.imeCompositionMode for more info. Additional resources: Input.imeCompositionMode, Input.compositionCursorPos.
