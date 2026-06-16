<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Android.Gradle.BaseBlock.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Abstract base class for all existing block elements.

Empty blocks don't appear in the resulting file. A block is empty if it has no children and has no raw value set.

### Constructors

| Constructor | Description |
| --- | --- |
| BaseBlock | Element constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| AddElement | Adds a new element as a child. |
| Clear | Clears the content of this element. |
| GetElement | Gets an element by ID. |
| GetElements | Gets all custom child elements. |
| GetName | Gets the name of the block. In some cases, the name is the signature of the function. |
| GetRaw | Gets the raw value of this block. |
| GetUniqueName | Gets the unique name of the element. |
| RemoveElement | Removes a child element by id. |
| SetRaw | Sets a raw string value to this block. |
| ToString | Gets a serialized value from this block. |

### Inherited Members

### Public Methods

| Method | Description |
| --- | --- |
| AddElementDependencies | Adds a list of dependencies by ID to this element. |
| AddElementDependency | Adds a dependency to this element. |
| GetElementDependenciesIDs | Gets a read-only list of element IDs that this element depends on. |
| GetID | Gets the unique ID of this element. |
| Remove | Removes this element from the file. |
| RemoveAllElementDependencies | Remove all element dependencies. |
| RemoveElementDependency | Remove an element dependency. |
| RemoveElementDependencyById | Remove an element dependency by ID. |
| ResolveConflict | Resolve a conflict if another script has already modified the element. |
