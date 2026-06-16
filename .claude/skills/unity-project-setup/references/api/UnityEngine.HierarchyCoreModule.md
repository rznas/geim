<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UnityEngine.HierarchyCoreModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Module that contains a high-performance hierarchy container.

### Classes

| Class | Description |
| --- | --- |
| Hierarchy | Represents a tree-like container of nodes. |
| HierarchyCommandList | Represents a list of commands that modify a hierarchy. |
| HierarchyFlattened | Represents a read-only array of HierarchyFlattenedNode over a Hierarchy. Used as an acceleration structure for query purposes. |
| HierarchyNodeTypeHandlerBase | Provides a base class for hierarchy node type handlers. |
| HierarchySearchQueryDescriptor | Encapsulates all the query filters and text values that are used to filter a hierarchy. |
| HierarchyViewModel | A hierarchy view model is a read-only filtering view of a HierarchyFlattened. |

### Structs

| Struct | Description |
| --- | --- |
| HierarchyFlattenedChildrenEnumerable | Represents an enumerable over the children of an HierarchyNode. |
| HierarchyFlattenedNode | Represents a flattened hierarchy node. |
| HierarchyNode | Represents a hierarchy node. |
| HierarchyNodeChildren | A read-only collection of a hierarchy node's children. |
| HierarchyNodeMapUnmanaged<T0> | Represents a collection of HierarchyNode and values of type T with O(1) access time. |
| HierarchyNodeType | Type descriptor for a node in Hierarchy. Corresponds to the NodeType of the HierarchyNodeHandler. |
| HierarchyNodeTypeHandlerBaseEnumerable | A read-only collection of hierarchy node type handler base. |
| HierarchyPropertyDescriptor | Describes the type and size of a Hierarchy Property. |
| HierarchyPropertyString | Provides access to string property data. |
| HierarchyPropertyUnmanaged<T0> | Provides strongly typed access to unmanaged property data. |
| HierarchySearchFilter | Encapsulates all data needed to filter a hierarchy. |
| HierarchyViewModelFlagsChangeScope | Auto dispose struct for HierarchyViewModel flags change scope. |
| HierarchyViewModelNodesEnumerable | Represent an enumerable of HierarchyNode with specific HierarchyNodeFlags. |

### Enumerations

| Enumeration | Description |
| --- | --- |
| HierarchyNodeFlags | Bit flags used to describe the state of a hierarchy node. |
| HierarchyPropertyStorageType | Describes how property values of a specific property are stored in memory. |
| HierarchySearchFilterOperator | Represents options for search filter operators. A colon (:) is the "contains" operator. A "-" is a "not" operator. |
| HierarchyTraversalDirection | Direction of traversal operation. |
