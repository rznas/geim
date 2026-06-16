<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchService.ShowContextual.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| providerIds | Unique IDs of search providers to enable when opening the search view. |

### Returns

**ISearchView** Returns the search view window instance.

### Description

Open the search window using a specific context (activating specific filters).

```csharp
[MenuItem("Tools/Search Menus _F1")]
public static void SearchMenuItems()
{
    SearchService.ShowContextual("menu");
}
```
