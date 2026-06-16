<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryEngine_1.SetGlobalStringComparisonOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stringComparison | String comparison options. |

### Description

Sets global string comparison options. Used for word matching and filter handling (unless overridden by filter).

Calling this function will set the global string comparison options used for word and filter matching:

```csharp
// Set the global string comparison options (default is OrdinalIgnoreCase)
queryEngine.SetGlobalStringComparisonOptions(StringComparison.Ordinal);
```

See QueryEngine.AddOperatorHandler for a complete example.
