<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityHierarchy.MoveNode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| node | The node to move. |
| newParent | The new parent of the node, or `null` if the node should be placed at the root level. |
| newChildIndex | An optional zero-based index which provides the position of the moved node in the new parent's child list or in the list of root nodes if the node should be a root. If the index is not provided or is invalid, then the node is moved at the end of the new parent's child list. |

### Returns

**bool** `true` if the node was successfully moved and `false` otherwise.

### Description

Moves the node elsewhere in the accessibility hierarchy. For example, under a different parent or at a different position in the parent's child list.

**Warning**: The moving operation is costly because many checks have to be executed to guarantee the integrity of the hierarchy. If this method is called excessively, it might negatively affect performance.
