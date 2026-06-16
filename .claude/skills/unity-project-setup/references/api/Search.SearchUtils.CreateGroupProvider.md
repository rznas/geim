<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchUtils.CreateGroupProvider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| templateProvider | Search provider template to copy. |
| groupId | New group id. This id is also used as the display name for the group tab if displayed in the ISearchView. |
| groupPriority | Priority used to order the group tab in the ISearchView. |
| cacheProvider | Ask the system to cache the provider in case the function gets called with the same ID later. |

### Returns

**SearchProvider** A new search provider that can be used temporarily for a given search session.

### Description

Copy of a search provider to create a new group copy.

This can be useful to base a new search provider on an existing one simply by replacing a few handlers. Note that this search provider will not be globally available, in example with SearchService.GetProvider.

```csharp
static SearchProvider CreateDecalProvider()
{
    var assetProvider = SearchService.GetProvider("asset");
    var decalProvider = SearchUtils.CreateGroupProvider(assetProvider, "Decals", 0, true);
    decalProvider.fetchPropositions = EnumerateDecalPropositions;
    return decalProvider;
}
```
