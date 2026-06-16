<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityHierarchy.InsertNode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| childIndex | A zero-based index which provides the position of the new node in the parent's child list or in the list of root nodes if the node should be a root. If the index is invalid, then the node is added to the end of the parent's child list. |
| label | A label that succinctly describes the node. |
| parent | The parent of the new node, or `null` if you want the node to be at the root level. |

### Returns

**AccessibilityNode** The node created and inserted into the accessibility hierarchy.

### Description

Creates a new AccessibilityNode with the given label and inserts it at the given index in the hierarchy, under the given parent.
