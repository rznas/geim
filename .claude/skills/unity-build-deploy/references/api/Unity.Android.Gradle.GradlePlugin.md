<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Android.Gradle.GradlePlugin.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Definition of a dependency gradle plugin.

For more information about the element, see Gradle's documentation: Applying plugins with the plugins DSL

### Properties

| Property | Description |
| --- | --- |
| Apply | The C# definition of the apply property. |
| Id | Id of the plugin. |
| Version | The C# definition of the version property. |

### Constructors

| Constructor | Description |
| --- | --- |
| GradlePlugin | Element constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| ToString | Gets a serialized value of this element. |

### Inherited Members

### Public Methods

| Method | Description |
| --- | --- |
| AddElementDependencies | Adds a list of dependencies by ID to this element. |
| AddElementDependency | Adds a dependency to this element. |
| Clear | Clears the content of this element. |
| GetElementDependenciesIDs | Gets a read-only list of element IDs that this element depends on. |
| GetID | Gets the unique ID of this element. |
| GetRaw | Gets the raw value of this element. |
| Remove | Removes this element from the file. |
| RemoveAllElementDependencies | Remove all element dependencies. |
| RemoveElementDependency | Remove an element dependency. |
| RemoveElementDependencyById | Remove an element dependency by ID. |
| ResolveConflict | Resolve a conflict if another script has already modified the element. |
| SetRaw | Sets a raw string value to this element. |
| GetUniqueName | Gets the unique name of the element. Element type combined with element ID will be returned. |
