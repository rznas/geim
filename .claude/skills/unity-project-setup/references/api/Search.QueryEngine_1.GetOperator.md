<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryEngine_1.GetOperator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| op | The operator identifier. |

### Returns

**QueryFilterOperator** The global QueryFilterOperator.

### Description

Get a custom operator added on the QueryEngine.

This method returns a QueryFilterOperator that was added on the QueryEngine. If the operator does not exist, the QueryFilterOperator will be invalid (see QueryFilterOperator.valid).

```csharp
// Get an operator based on its token and add some handlers on it.
var operatorToken = "%";
var operatorObject = queryEngine.GetOperator(operatorToken);
if (operatorObject.valid)
    operatorObject.AddHandler((float ev, float fv) => Math.Abs(ev % fv) < 0.0000001f);
```

See AddOperator for a complete example.
