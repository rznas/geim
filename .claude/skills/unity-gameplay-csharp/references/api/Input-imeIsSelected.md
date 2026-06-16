<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input-imeIsSelected.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Does the user have an IME keyboard input source selected?

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

This returns true if the users keyboard is currently configured for IME input, and false otherwise. Since users of asian languages can typically turn IME conversion on or off using a keystroke, it is useful to provide some visual indication of IME being enabled. This can be done by checking Input.imeIsSelected.
