<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchExpressionRuntime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Encapsulate all the runtime data needed to evaluate a root expression and all its parameters. This class contains the SearchContext that created the root SearchExpression and all the stack frames needed to evaluate all the nested SearchExpression.

### Properties

| Property | Description |
| --- | --- |
| current | Current SearchExpressionContext corresponding to the stack frame being evaluated. |
| frames | The stack of all SearchExpressionContext being evaluated. |
| items | The stack of SearchItems that have been yielded by each execution frame. |
| search | Initial SearchContext contaning the text that was used to parse the initial root SearchExpression. |
| valid | Is the current runtime valid. This means are there any SearchExpressionContext being evaluated. |

### Public Methods

| Method | Description |
| --- | --- |
| Push | Push a new SearchExpression with its arguments to be evaluated. This is useful if a user defined evaluator needs to generate a new Context of evaluation. |
| ToString | Get a string representation of the current SearchExpressionRuntime. |
