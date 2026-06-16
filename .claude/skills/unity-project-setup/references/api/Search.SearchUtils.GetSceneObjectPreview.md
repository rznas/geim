<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchUtils.GetSceneObjectPreview.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | Scene object instance. |
| size | Preview size. |
| options | Preview options. |
| thumbnail | Any existing thumbnail in case we cannot obtain a scene object preview. |

### Returns

**Texture2D** Object preview or thumbnail fallback.

### Description

Returns a scene object preview to be used in the search view.

See SearchProvider.fetchPreview.
