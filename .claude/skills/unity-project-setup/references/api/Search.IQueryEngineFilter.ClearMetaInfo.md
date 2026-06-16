<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.IQueryEngineFilter.ClearMetaInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IQueryEngineFilter** The current filter.

### Description

Removes all additional information specific to the filter.

```csharp
filter.ClearMetaInfo();
var filtersWithMetaInfo = queryEngine.GetAllFilters().Where(f => f.metaInfo.Count > 0);
Debug.Assert(!filtersWithMetaInfo.Contains(filter), "Filter \"id\" should not have any meta info.");
```
