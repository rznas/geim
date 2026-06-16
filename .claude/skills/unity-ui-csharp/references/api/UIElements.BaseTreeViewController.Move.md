<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.BaseTreeViewController.Move.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | The ID of the item to move. |
| newParentId | The new parent ID. -1 if moved at the root. |
| childIndex | The child index to insert at under the parent. -1 will add as the last child. |
| rebuildTree | Whether we need to rebuild tree data. Set to false when doing multiple operations. |

### Description

Moves an item by ID, to a new parent and child index.
