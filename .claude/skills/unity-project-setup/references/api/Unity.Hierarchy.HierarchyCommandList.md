<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Hierarchy.HierarchyCommandList.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a list of commands that modify a hierarchy.

### Properties

| Property | Description |
| --- | --- |
| Capacity | The capacity in bytes for storing commands in the command list. |
| IsCreated | Determines if this object is valid and uses memory. |
| IsEmpty | Determines if the command list is empty. |
| IsExecuting | Determines if the command list is currently executing. |
| Size | The current size in bytes used by commands in the command list. |

### Constructors

| Constructor | Description |
| --- | --- |
| HierarchyCommandList | Constructs a new HierarchyCommandList. |

### Public Methods

| Method | Description |
| --- | --- |
| Add | Adds a new node that has a specified parent node to the hierarchy. |
| Clear | Clears all commands from the command list. |
| ClearProperty | Clears a property value for the specified hierarchy node. |
| Dispose | Disposes the command list and releases its memory. |
| Execute | Executes all the commands in the hierarchy command list. |
| ExecuteIncremental | Executes one command from the hierarchy command list. |
| ExecuteIncrementalTimed | Executes commands from the hierarchy command list until a time limit is reached. |
| Remove | Removes a node from the hierarchy. |
| RemoveChildren | Recursively removes all children of a node. |
| Reserve | Reserves memory for nodes to use. Use this to avoid memory allocation hits when you add batches of nodes. |
| SetChildrenNeedsSorting | Marks a hierarchy node as requiring sorting of its children in the next sorting operation. |
| SetDirty | Force an update of the hierarchy, even if no changes are pending. |
| SetName | Sets a name for a hierarchy node. |
| SetParent | Sets the parent node of a hierarchy node. |
| SetProperty | Sets a value for a property of a hierarchy node. |
| SetSortIndex | Sets the sorting index for a hierarchy node. |
| SortChildren | Sorts the child nodes of a hierarchy node by their sort index. |
| SortChildrenRecursive | Recursively sorts the child nodes of a hierarchy node by their sort index. |
