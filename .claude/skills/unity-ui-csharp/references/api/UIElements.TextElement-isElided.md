<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.TextElement-isElided.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if text is elided, false otherwise.

Text is elided when the element that contains it is not large enough to display the full text, and has the following style property settings.

 overflow: Overflow.Hidden whiteSpace: WhiteSpace.NoWrap textOverflow: TextOverflow.Ellipsis

 The text Element hides elided text, and displays an ellipsis ('...') to indicate that there is hidden overflow content.
