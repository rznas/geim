<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.ITextSelection.MoveToStartOfNextWord.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Moves the cursor to the start of the next word.

The cursor moves according to the logical text indices, which might differ from their visual order on screen, especially with right-to-left text. This API uses the visualElement's style to compute the result, so calling it before the styles are computed might return an incorrect value.
