<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.ITextSelection.MoveToParagraphStart.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Moves the cursor to the start of the current paragraph.

This method looks for a line-breaking character and ignores word wrapping when determining the end of the paragraph. This API uses the visualElement's style to compute the result, so calling it before the styles are computed might return an incorrect value.
