<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchExpressionRuntime.Push.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| searchExpression | Expression to evaluate. |
| args | Parameters passed to the expression to evaluate. |
| flags | Exeution Flags used to add to the flags specified in the expression being evaluated. |
| item | Push a new yielded item in the current evaluation frame. |

### Returns

**IDisposable** Returns a new disposable Scope. When out this scope is disposed the newly created SearchExpressionContext will be removed from the frames.

### Description

Push a new SearchExpression with its arguments to be evaluated. This is useful if a user defined evaluator needs to generate a new Context of evaluation.
