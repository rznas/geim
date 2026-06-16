<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.IQueryNode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface representing a query node.

### Properties

| Property | Description |
| --- | --- |
| children | The node's children. Can be null. |
| identifier | A string representing this node and its children. |
| leaf | True if this node is a leaf. A leaf doesn't have any children. |
| parent | Parent of this node. Null if this node is the root. |
| skipped | True if this node is skipped during evaluation. A node can be skipped if the QueryEngine was configured to skip unsupported nodes instead of generating errors. |
| token | The token used to build this node. |
| type | The node's type. |

### Public Methods

| Method | Description |
| --- | --- |
| QueryHashCode | Returns a hashcode for this node. Multiple nodes can have the same hashcode if they have the same identifier. |
