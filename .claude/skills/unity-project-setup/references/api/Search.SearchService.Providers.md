<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchService.Providers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the list of all search providers (active or not).

```csharp
// Print special search providers
foreach (var provider in SearchService.Providers.Where(p => p.isExplicitProvider))
    Debug.Log($"Special Search Provider {provider.name} ({provider.id})");
```
