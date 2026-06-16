<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Hierarchy.Hierarchy.GetDepth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| node | The hierarchy node. |

### Returns

**int** The depth of the hierarchy node. A value of -1 indicates the root node. A value of 0 indicates direct child nodes of the root node. A value of 1 indicates child nodes of the root node's direct children, and then their children have a value of 2 and so on.

### Description

Determines the depth of a node.
