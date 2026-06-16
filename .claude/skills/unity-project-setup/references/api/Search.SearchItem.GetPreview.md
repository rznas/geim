<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchItem.GetPreview.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Search context used to fetch the preview. |
| size | Indicates the size of the desired preview. |
| options | Indicates the options used to fetch various preview types. |
| cacheThumbnail | Indicates if the preview thumbnail should be cached for next time. |

### Returns

**Texture2D** Returns the generated preview 2D texture.

### Description

Gets the search item preview if available, otherwise the preview is fetched at this time.
