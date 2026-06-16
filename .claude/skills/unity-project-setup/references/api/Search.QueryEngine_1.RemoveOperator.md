<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryEngine_1.RemoveOperator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| op | The operator identifier. |

### Description

Removes a custom operator that was added on the QueryEngine.

```csharp
// Remove an operator based on its token
var operatorToken = "%";
queryEngine.RemoveOperator(operatorToken);
```
