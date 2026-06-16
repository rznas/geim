<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input-imeCompositionMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls enabling and disabling of IME input composition.

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

Some languages use complex input methods which involve opening windows to insert characters. Typically, this is not desirable while playing a game, as games may just interpret key strokes as game input, not as text. By default, Unity will enable IME composition when in text fields, and disable it otherwise. However, when you want to implement your own input GUI, you may want to have control over this yourself, which is possible using the imeCompositionMode property. Set it to `Auto` for the default behavior, or `On` or `Off` to explicitly enable or disable IME composition.
