<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchProvider-fetchPropositions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Handler used to enumerate search propositions when the user is using TAB to auto-complete a query.

```csharp
IEnumerable<SearchProposition> FetchPropositions(SearchContext context, SearchPropositionOptions options)
{
  foreach (var f in myFilters)
    yield return new SearchProposition(f.name, f.name, f.label);
}
```
