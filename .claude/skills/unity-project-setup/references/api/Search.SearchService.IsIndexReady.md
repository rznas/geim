<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchService.IsIndexReady.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Unique name of the index. This name usually matches the one displayed in the Search Index Manager or the one used to invoke SearchService.CreateIndex. |

### Returns

**bool** Returns true if the search index is ready to be used.

### Description

Indicates if a search index is ready to be used.

When a search index is ready to be used, you can use SearchService.Request with `p: a:<name_of_the_index> filters...` to only search that index's data.
