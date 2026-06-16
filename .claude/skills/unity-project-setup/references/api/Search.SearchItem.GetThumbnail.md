<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchItem.GetThumbnail.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Search context used to fetch the search item thumbnail. |
| cacheThumbnail | Indicates if the search item thumbnail should be cached for next time. |

### Returns

**Texture2D** Returns the search item 2D texture.

### Description

Gets the search item thumbnail if available, otherwise the thumbnail is fetched at this time. The thumbnail is usually used in list view compared to the grid view.
