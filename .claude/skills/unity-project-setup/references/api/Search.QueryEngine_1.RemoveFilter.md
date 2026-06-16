<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryEngine_1.RemoveFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| token | The identifier of the filter. Typically what precedes the operator in a filter (for example, "id" in "id>=2"). |

### Description

Removes a custom filter.

You will get a warning if you try to remove a non-existent filter.

```csharp
// Remove the filter with token "id"
var token = "id";
queryEngine.RemoveFilter("id");
```

### Parameters

| Parameter | Description |
| --- | --- |
| filter | The filter object returned by AddFilter. |

### Description

Removes a custom filter.
