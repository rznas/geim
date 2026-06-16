<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Highlighter.HighlightIdentifier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position to make highlightable. |
| identifier | The identifier text of the rect. |

### Description

Call this method to create an identifiable rect that the Highlighter can find.

If you want a custom rect in an EditorWindow or custom Editor to be highlightable, you can call this method to specify the rect and the identifier text for that rect. That will make it possible for the Highlighter to highlight the rect.
