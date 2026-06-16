<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchService.OrderedProviders.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the list of search providers sorted by priority.

```csharp
// Print providers by their search priority when a query is executed.
foreach (var provider in SearchService.OrderedProviders)
    Debug.Log($"[{provider.priority}] {provider.name} ({provider.id})");
```
