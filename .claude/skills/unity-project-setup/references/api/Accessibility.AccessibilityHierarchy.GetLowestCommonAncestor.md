<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityHierarchy.GetLowestCommonAncestor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| firstNode | The first node to find the lowest common ancestor of. |
| secondNode | The second node to find the lowest common ancestor of. |

### Returns

**AccessibilityNode** The lowest common ancestor of the two given nodes, or `null` if they don't have a common ancestor.

### Description

Retrieves the lowest common ancestor of two nodes in the accessibility hierarchy.

The lowest common ancestor is the node that both nodes share in their path to the root node of their branch in the hierarchy.
