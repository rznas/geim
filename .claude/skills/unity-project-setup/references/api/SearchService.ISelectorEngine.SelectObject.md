<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.ISelectorEngine.SelectObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | The search context. |
| onObjectSelectorClosed | Callback to call when the selector window is closed. The callback takes two arguments. The first argument is the selected object, or null for none. The second is a boolean that indicates whether the operation was cancelled or not. |
| onObjectSelectedUpdated | Callback to call when the selection in the window changes. This callback takes one argument: the selected object, or null for none. |

### Returns

**bool** True if the search engine handles the object select operation, false otherwise. If false is returned, the default object selector is used instead.

### Description

This function is called when a window must be opened to perform a search and select operation.

If the function returns false, the default selector is used instead.
