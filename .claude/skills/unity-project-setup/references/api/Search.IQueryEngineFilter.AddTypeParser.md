<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.IQueryEngineFilter.AddTypeParser.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| parser | Callback used to determine if a string can be converted into "TFilterConstant". Takes a string and returns a ParseResult object. This contains the success flag, and the actual converted value if it succeeded. |

### Returns

**IQueryEngineFilter** The current filter.

### Description

Add a type parser specific to the filter.

Add a type parser specific to the filter that parses a string and returns a custom type. Used by custom operator handlers. This type parser will only be used by this filter and will not affect other filters.

```csharp
// Add a new type parser for Vector2 written as "[x, y]", but only for this filter.
// This type parser will not affect other filters.
queryEngine.TryGetFilter("p", out var filter);
filter.AddTypeParser(s =>
{
    // If the format requirement is not met, return a failure.
    if (!s.StartsWith("[") || !s.EndsWith("]"))
        return ParseResult<Vector2>.none;

    var trimmed = s.Trim('[', ']');
    var vectorTokens = trimmed.Split(',');
    var vectorValues = vectorTokens.Select(token => float.Parse(token, CultureInfo.InvariantCulture.NumberFormat)).ToList();
    if (vectorValues.Count != 2)
        return ParseResult<Vector2>.none;
    var vector = new Vector2(vectorValues[0], vectorValues[1]);

    // When the conversion succeeds, return a success.
    return new ParseResult<Vector2>(true, vector);
});
```

See IQueryEngineFilter for a complete example.
