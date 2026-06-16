<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Hierarchy.HierarchyViewModel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A hierarchy view model is a read-only filtering view of a HierarchyFlattened.

### Properties

| Property | Description |
| --- | --- |
| Count | The total number of nodes. |
| Filtering | Whether the hierarchy view model is currently filtering nodes. |
| IsCreated | Whether this object is valid and uses memory. |
| this[int] | Gets the HierarchyNode at a specified index. |
| UpdateNeeded | Whether the hierarchy view model requires an update. |
| Updating | Whether the hierarchy view model is currently updating. |

### Constructors

| Constructor | Description |
| --- | --- |
| HierarchyViewModel | Cosntructs a new HierarchyViewModel. |

### Public Methods

| Method | Description |
| --- | --- |
| AsReadOnlySpan | Returns a read-only span of all hierarchy nodes in the view model. |
| BeginFlagsChange | Begins a batch of flags changes. |
| ClearFlags | Clears the specified flags on all hierarchy nodes. |
| ClearFlagsRecursive | Clears the specified flags recursively on the hierarchy node. |
| Contains | Determines if a specified node is in the hierarchy view model. |
| Dispose | Disposes this object and releases its memory. |
| DoesNotHaveAllFlags | Gets whether or not all of the specified flags are not set on any hierarchy node. |
| DoesNotHaveAllFlagsCount | Gets the number of nodes that do not have all of the specified flags set. |
| DoesNotHaveAnyFlags | Gets whether or not any of the specified flags are not set on any hierarchy node. |
| DoesNotHaveAnyFlagsCount | Gets the number of nodes that do not have any of the specified flags set. |
| EndFlagsChange | Ends a batch of flags changes. |
| EndFlagsChangeWithoutNotify | Ends a batch of flags changes without notifying listeners. |
| EnumerateNodesWithAllFlags | Gets an enumerable of all hierarchy nodes that have all of the specified flags set. |
| EnumerateNodesWithAnyFlags | Gets an enumerable of all hierarchy nodes that have any of the specified flags set. |
| EnumerateNodesWithoutAllFlags | Gets an enumerable of all hierarchy nodes that do not have all of the specified flags set. |
| EnumerateNodesWithoutAnyFlags | Gets an enumerable of all hierarchy nodes that do not have any of the specified flags set. |
| GetChild | Gets the child node at the specified index of a hierarchy node. |
| GetChildIndex | Gets the index of a hierarchy node in its parent's children list. |
| GetChildrenCount | Gets the number of child nodes that a hierarchy node has. |
| GetChildrenCountRecursive | Gets the number of child nodes that a hierarchy node has, including children of children. |
| GetDepth | Determines the depth of a node. |
| GetEnumerator | Gets the HierarchyNode enumerator. |
| GetFlags | Gets all the flags set on a given hierarchy node. |
| GetIndicesWithAllFlags | Gets the indices for all hierarchy nodes that have all of the specified flags set. |
| GetIndicesWithAnyFlags | Gets the indices for all hierarchy nodes that have any of the specified flags set. |
| GetIndicesWithoutAllFlags | Gets the indices of all hierarchy nodes that do not have all of the specified flags set. |
| GetIndicesWithoutAnyFlags | Gets the indices of all hierarchy nodes that do not have any of the specified flags set. |
| GetNextSibling | Gets the next sibling of a node. |
| GetNodesWithAllFlags | Gets all hierarchy nodes that have all of the specified flags set. |
| GetNodesWithAnyFlags | Gets all hierarchy nodes that have any of the specified flags set. |
| GetNodesWithoutAllFlags | Gets all hierarchy nodes that do not have all of the specified flags set. |
| GetNodesWithoutAnyFlags | Gets all hierarchy nodes that do not have any of the specified flags set. |
| GetParent | Gets the parent of a hierarchy node. |
| GetRoot | Gets the root node of the hierarchy view model. |
| HasAllFlags | Gets whether or not all of the specified flags are set on any hierarchy node. |
| HasAllFlagsCount | Gets the number of nodes that have all of the specified flags set. |
| HasAnyFlags | Gets whether or not any of the specified flags are set on any hierarchy node. |
| HasAnyFlagsCount | Gets the number of nodes that have any of the specified flags set. |
| IndexOf | Gets the zero-based index of a specified node. |
| SetFlags | Sets the specified flags on all hierarchy nodes. |
| SetFlagsRecursive | Sets the specified flags recursively on the hierarchy node. |
| SetQuery | Sets the search query. |
| SetRoot | Sets the root of the hierarchy view model. |
| ToggleFlags | Toggles the specified flags on all hierarchy nodes. |
| ToggleFlagsRecursive | Toggles the specified flags recursively on the hierarchy node. |
| Update | Updates the hierarchy view model and requests a rebuild of the list of HierarchyNode that filters the HierarchyFlattened. |
| UpdateIncremental | Updates the hierarchy view model incrementally. |
| UpdateIncrementalTimed | Updates the hierarchy view model incrementally until a time limit is reached. |

### Events

| Event | Description |
| --- | --- |
| FlagsChanged | Event that is invoked when flags on hierarchy nodes are changed. |

### Delegates

| Delegate | Description |
| --- | --- |
| FlagsChangedEventHandler | Delegate that is invoked when flags on hierarchy nodes are changed. |
