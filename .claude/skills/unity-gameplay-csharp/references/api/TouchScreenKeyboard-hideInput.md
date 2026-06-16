<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TouchScreenKeyboard-hideInput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Will text input field above the keyboard be hidden when the keyboard is on screen?

This property is applicable for single line text fields that have assigned keyboard with alphanumeric keys. When TouchScreenKeyboard.hideInputs is set to true, the only type of keyboard that can be opened is TouchScreenKeyboardType.Default. This type of keyboard will be opened even if other types are specified to be opened.


**Android:** There is no reliable way of hiding input field. Unity provides this property which, when you enable it, renders the input field outside of the screen. This gives the illusion of a hidden input field.
