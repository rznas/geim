<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.ITextSelection.GetCursorPositionFromStringIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The position inside the element's content box where the text cursor would be if it were at the selected index.

The position is on the bottom-left corner of the character at the specified logical index. Index `0` corresponds to the position just before the first character, and for a string of length `n`, index `n` is just after the last character. This API uses the visualElement's style to compute the result, so calling it before the styles are computed might return an incorrect value.
