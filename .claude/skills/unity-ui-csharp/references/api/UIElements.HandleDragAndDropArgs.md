<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.HandleDragAndDropArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Information about a drag-and-drop operation in progress. See BaseVerticalCollectionView.dragAndDropUpdate and BaseVerticalCollectionView.handleDrop.

### Properties

| Property | Description |
| --- | --- |
| childIndex | The child index under the parentId that the drag-and-drop operation targets. Used only for trees. |
| dragAndDropData | Data stored for the drag-and-drop operation. |
| dropPosition | The type of drop position. |
| insertAtIndex | The index at which the drop operation wants to happen. |
| parentId | The new parent targeted by the drag-and-drop operation. Used only for trees. |
| position | The world position of the pointer. |
| target | The target of the drop. There is only a target when hovering over an item. DropPosition.OverItem |
