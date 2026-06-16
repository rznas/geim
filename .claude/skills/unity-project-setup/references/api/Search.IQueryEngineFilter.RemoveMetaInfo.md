<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.IQueryEngineFilter.RemoveMetaInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | The key of the information. |

### Returns

**IQueryEngineFilter** The current filter.

### Description

Remove information on the filter.

You can use this function to remove additional information that is no longer needed.

```csharp
var descriptionMetaInfoKey = "desc";
filter.RemoveMetaInfo(descriptionMetaInfoKey);
```

See metaInfo for a complete example.
