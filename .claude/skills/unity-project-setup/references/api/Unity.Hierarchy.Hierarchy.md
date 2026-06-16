<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Hierarchy.Hierarchy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a tree-like container of nodes.

### Properties

| Property | Description |
| --- | --- |
| Count | The total number of nodes. |
| IsCreated | Whether or not this object is valid and uses memory. |
| Root | The root node. |
| UpdateNeeded | Whether the hierarchy requires an update. |
| Updating | Whether the hierarchy is currently updating. |

### Constructors

| Constructor | Description |
| --- | --- |
| Hierarchy | Constructs a new Hierarchy. |

### Public Methods

| Method | Description |
| --- | --- |
| Add | Adds a new node that has a specified parent node to the hierarchy. |
| Clear | Removes all nodes from the hierarchy. |
| Dispose | Dispose this object to release its memory. |
| DoesChildrenNeedsSorting | Gets whether the child nodes of a hierarchy node need to be sorted. |
| EnumerateChildren | Gets the child nodes of a hierarchy node. |
| EnumerateNodeTypeHandlersBase | Enumerates all the node type handlers base that this hierarchy uses. |
| Exists | Determines whether a node exists or not. |
| GetChild | Gets the child node at the specified index of a hierarchy node. |
| GetChildIndex | Gets the index of a hierarchy node in its parent's children list. |
| GetChildren | Gets the child nodes of a hierarchy node. |
| GetChildrenCount | Gets the number of child nodes that a hierarchy node has. |
| GetChildrenCountRecursive | Gets the number of child nodes that a hierarchy node has, including children of children. |
| GetDepth | Determines the depth of a node. |
| GetHashCode | Gets the hash code for the specified hierarchy node. |
| GetName | Gets the name of a hierarchy node. |
| GetNextSibling | Gets the next sibling of a node. |
| GetNodeType | Gets the type of the specified hierarchy node. |
| GetNodeTypeHandlerBase | Gets a hierarchy node type handler instance from this hierarchy. |
| GetOrCreateNodeTypeHandler | Get or create a hierarchy node type handler instance for this hierarchy. |
| GetOrCreatePropertyString | Creates a string property with a specified name. |
| GetOrCreatePropertyUnmanaged | Creates an unmanaged property with a specified name. |
| GetParent | Gets the parent of a hierarchy node. |
| GetPath | Gets the path of a hierarchy node. |
| GetSortIndex | Gets the sort index of a hierarchy node. Default is 0. |
| Remove | Removes a node from the hierarchy. |
| RemoveChildren | Recursively removes all children of a node. |
| Reserve | Ensures that the hierarchy has enough memory reserved for storing the specified number of nodes. |
| ReserveChildren | Ensures that the hierarchy node has enough memory reserved for storing the specified number of children nodes. |
| SetChildrenNeedsSorting | Marks a hierarchy node as requiring sorting of its children in the next sorting operation. |
| SetDirty | Force an update of the hierarchy, even if no changes are pending. |
| SetName | Sets the name of a hierarchy node. |
| SetParent | Sets the parent of a hierarchy node. |
| SetSortIndex | Sets the sort index of a hierarchy node. |
| SortChildren | Sorts the child nodes of a hierarchy node according to their sort index. |
| SortChildrenRecursive | Sorts the child nodes of a hierarchy node according to their sort index. |
| Update | Updates the hierarchy, executing all pending changes in the command list. |
| UpdateIncremental | Updates the hierarchy incrementally, executing one pending change in the command list. |
| UpdateIncrementalTimed | Updates the hierarchy incrementally, executing pending changes in the command list until a time limit is reached. |
