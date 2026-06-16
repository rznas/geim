<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Hierarchy.Hierarchy.GetNodeTypeHandlerBase.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**T** The hierarchy node type handler instance for that type if already created, `null` otherwise.

### Description

Gets a hierarchy node type handler instance from this hierarchy.

### Returns

**HierarchyNodeTypeHandlerBase** If the node has a type, the hierarchy node type handler base instance, `null` otherwise.

### Description

Gets the node type handler instance for the specified node from this hierarchy.

### Parameters

| Parameter | Description |
| --- | --- |
| nodeTypeName | The node type name. |

### Returns

**HierarchyNodeTypeHandlerBase** If the node type name matches a registered node type handler, the hierarchy node type handler base instance, `null` otherwise.

### Description

Gets the node type handler instance for the specified node type name from this hierarchy.
