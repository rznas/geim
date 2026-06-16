<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Hierarchy.HierarchyFlattened.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a read-only array of HierarchyFlattenedNode over a Hierarchy. Used as an acceleration structure for query purposes.

Querying information about nodes completes much faster than the same methods on Hierarchy because they are stored during the updates.

### Properties

| Property | Description |
| --- | --- |
| Count | The total number of flattned nodes. |
| IsCreated | Whether this object is valid and uses memory or not. |
| this[int] | Gets the HierarchyFlattenedNode at a specified index. |
| UpdateNeeded | Determines if the flattened hierarchy needs an update. |
| Updating | Whether the flattened hierarchy is currently updating. |

### Constructors

| Constructor | Description |
| --- | --- |
| HierarchyFlattened | Cosntructs a new HierarchyFlattened. |

### Public Methods

| Method | Description |
| --- | --- |
| AsReadOnlySpan | Returns a read-only span of all hierarchy flattened nodes in the hierarchy flattened. |
| Contains | Determines if a specified node is in the hierarchy flattened. |
| Dispose | Disposes this object to release its memory. |
| EnumerateChildren | Gets an enumerable of children HierarchyFlattenedNode for the specified node. |
| GetChild | Gets the child node at the specified index of a hierarchy node. |
| GetChildIndex | Gets the index of a hierarchy node in its parent's children list. |
| GetChildrenCount | Gets the number of child nodes that a hierarchy node has. |
| GetChildrenCountRecursive | Gets the number of child nodes that a hierarchy node has, including children of children. |
| GetDepth | Determines the depth of a node. |
| GetEnumerator | Gets the HierarchyFlattenedNode enumerator. |
| GetNextSibling | Gets the next sibling of a node. |
| GetParent | Gets the parent of a hierarchy node. |
| IndexOf | Gets the zero-based index of a specified node. |
| Update | Updates the flattened hierarchy and requests a rebuild of the list of HierarchyFlattenedNode from the Hierarchy topology. |
| UpdateIncremental | Updates the flattened hierarchy incrementally. |
| UpdateIncrementalTimed | Incrementally updates the flattened hierarchy until a time limit is reached. |
