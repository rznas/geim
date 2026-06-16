<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchItem.TryGetValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Field name. |
| field | Copy of the field found. |
| context | Search context if available to resolve the search field. |

### Returns

**void** Returns true if a field value was found.

### Description

Returns' a field's value if any. Compared to SearchItem.TryGetField this method also resolved built-in field such as id, label, description, value, etc.
