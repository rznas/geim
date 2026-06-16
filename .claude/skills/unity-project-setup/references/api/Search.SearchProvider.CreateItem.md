<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchProvider.CreateItem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Search context from the query that generates this item. |
| id | Unique ID of the search item. This is used to remove duplicates in the user view. |
| score | Relevance score of the search item. The relevance score is used to sort all the results per search provider. Lower relevance scores indicate more relevance and are shown first. |
| label | Display name of the item. It is displayed on the first line of the search item UI widget. If there is no `label` given, the `id` parameter is used instead. |
| description | The search item description is displayed on the second line of the search item UI widget. |
| thumbnail | The search item thumbnail is displayed to the left of the item label and description as a preview. |
| data | Search provider defined content. It can be used to transport any data to custom search provider handlers (i.e. SearchProvider.fetchDescription). |

### Returns

**SearchItem** The newly created search item attached to the current search provider.

### Description

Helper function to create a new search item for the current search provider.

For different use cases see SearchProvider, SearchProvider.id, SearchProvider.isExplicitProvider, SearchProvider.priority.
