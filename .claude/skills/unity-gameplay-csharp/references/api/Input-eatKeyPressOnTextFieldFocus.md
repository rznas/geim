<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input-eatKeyPressOnTextFieldFocus.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Property indicating whether keypresses are eaten by a textinput if it has focus (default true).

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

This will avoid keypresses seeping through to the underlying gameview. This property must be set to false for anyKey or GetKey to work while a textfield has focus. IME input in the macOS web plugin is disabled when this is set to false.
