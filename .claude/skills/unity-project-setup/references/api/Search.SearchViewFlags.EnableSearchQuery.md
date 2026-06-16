<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchViewFlags.EnableSearchQuery.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This flag enables the use of the Saved Searches workflow in the Search Picker window.

This flag is not set by default. When it is not set, the Search Picker window will not show any panel or button related to the Saved Searches workflow. The flag OpenLeftSidePanel will not work without EnableSearchQuery.

```csharp
[SearchContext("t:material", "asset", SearchViewFlags.EnableSearchQuery)]
public Material selectMaterial;
```
