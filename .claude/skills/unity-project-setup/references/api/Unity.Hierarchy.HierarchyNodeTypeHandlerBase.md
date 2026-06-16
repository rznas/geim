<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Hierarchy.HierarchyNodeTypeHandlerBase.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides a base class for hierarchy node type handlers.

### Properties

| Property | Description |
| --- | --- |
| CommandList | Get the HierarchyCommandList associated with this handler. |
| Hierarchy | Get the Hierarchy owning this handler. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Disposes this hierarchy node type handler to free up resources in the derived class. |
| GetDefaultNodeFlags | Get the default value used to initialize a hierarchy node flags. |
| GetNodeHashCode | Gets the hash code for the specified hierarchy node. |
| GetNodeType | Retrieves the hierarchy node type for this hierarchy node type handler. |
| GetNodeTypeName | Get the type name of this hierarchy node type handler. |
| SearchMatch | Determines if a node matches the search query. |

### Protected Methods

| Method | Description |
| --- | --- |
| Initialize | Initializes this hierarchy node type handler. |
| SearchBegin | Called when a new search query begins. |
| SearchEnd | Called when a search query ends. |
| ViewModelPostUpdate | Called after the HierarchyViewModel finishes being updated. |
