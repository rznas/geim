<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.WhiteSpace.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls how whitespace and line breaks within an element's text are handled, similar to the CSS white-space property. Unlike the CSS property, only trailing whitespaces are collapsed, and whitespaces within the text are preserved. See [white-space](https://developer.mozilla.org/en-US/docs/Web/CSS/white-space)

Whitespaces within TextFields are not collapsed.

### Properties

| Property | Description |
| --- | --- |
| Normal | Trailing sequences of whitespace are collapsed into a single whitespace. Text will wrap when necessary. This is the default behavior. |
| NoWrap | Trailing sequences of whitespace are collapsed into a single whitespace. Text will never wrap to the next line. |
| Pre | Whitespace is preserved. Text will only wrap on line breaks. |
| PreWrap | Whitespace is preserved. Text will wrap when necessary. |
