<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Highlighter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this class to highlight elements in the editor for use in in-editor tutorials and similar.

### Static Properties

| Property | Description |
| --- | --- |
| active | Is there currently an active highlight? |
| activeRect | The rect in screenspace of the current active highlight. |
| activeText | The text of the current active highlight. |
| activeVisible | Is the current active highlight visible yet? |

### Static Methods

| Method | Description |
| --- | --- |
| Highlight | Highlights an element in the editor. |
| HighlightIdentifier | Call this method to create an identifiable rect that the Highlighter can find. |
| Stop | Stops the active highlight. |
