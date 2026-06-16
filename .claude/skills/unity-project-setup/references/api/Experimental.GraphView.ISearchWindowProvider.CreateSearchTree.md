<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GraphView.ISearchWindowProvider.CreateSearchTree.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Contextual data initially passed the window when first created. |

### Returns

**List<SearchTreeEntry>** Returns the list of SearchTreeEntry objects displayed in the search window.

### Description

Generates data to populate the search window.

This method is invoked when the SearchWindow first opens and when it is reloaded. A reload occurs when entering playmode or when a scripting domain reloads. The list of objects returned is not modified during reloading. It is therefore safe to reuse the list in each call to cache the list.
