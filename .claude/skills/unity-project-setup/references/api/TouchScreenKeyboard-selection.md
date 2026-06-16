<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TouchScreenKeyboard-selection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets or sets the character range of the selected text within the string currently being edited.

For example: if the keyboard is editing a text "abcdef" and the "cde" substring is selected, the return value is a RangeInt with the RangeInt.start value set to 2 and a RangeInt.length value of 3. Similarly, setting selection to a RangeInt with the RangeInt.start value set to 2 and a RangeInt.length value of 3 will select "cde" of the string "abcdef".

If the caret is between two characters and no text is selected, then the RangeInt.length property is 0.

This always returns an empty range (start 0, length 0) if canGetSelection is false.
