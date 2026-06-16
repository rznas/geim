<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchExpression.Check.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| e | SearchExpression to test. |
| c | Execute context of the expression. |

### Returns

**bool** Returns true if the SearchExpression yields more than one item or if the sole item is true.

### Description

Execute a SearchExpression and checks if the internal value of the first yielded SearchItem is truish. Not 0, not null, not "" and not false.
