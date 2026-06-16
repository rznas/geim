<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TouchScreenKeyboard-inputFieldAppearance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the current visibility status of the on-screen keyboard's input field. (Read Only)

The input field can be always visible, always hidden, or customizable. If the input field is customizable, you can use TouchScreenKeyboard.hideInput to customize the visibility of the input field based on the requirement of your application.

**Note:** On Android, if your application uses the GameActivity application entry point, the input field of the on-screen keyboard is always hidden. This is because GameActivity uses Android's [GameTextInput](https://developer.android.com/games/agdk/add-support-for-text-input) library which always keeps the input field hidden, with no option to make it visible.
