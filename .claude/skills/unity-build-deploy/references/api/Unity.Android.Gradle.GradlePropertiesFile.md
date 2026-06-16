<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Android.Gradle.GradlePropertiesFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The C# definition of `gradle.properties` file.

For more information about the file, see Android's documentation: [Gradle properties files](https://developer.android.com/studio/build#properties-files)

### Properties

| Property | Description |
| --- | --- |
| JvmArgs | The C# definition of the org.gradle.jvmargs property. |
| Parallel | The C# definition of the org.gradle.parallel property. |
| UnityProjectPath | The C# definition of the unityProjectPath. Path to Unity project. |
| UnityRootPath | The C# definition of the unityRootPath. Path to Unity executable. |
| UnityStreamingAssets | The C# definition of the unityStreamingAssets. List of files that are provided as streaming assets and won't be compressed. |

### Constructors

| Constructor | Description |
| --- | --- |
| GradlePropertiesFile | File constructor. |

### Inherited Members

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
| AddElementDependencies | Adds a list of dependencies by ID to this element. |
| AddElementDependency | Adds a dependency to this element. |
| GetElementDependenciesIDs | Gets a read-only list of element IDs that this element depends on. |
| GetID | Gets the unique ID of this element. |
| Remove | Removes this element from the file. |
| RemoveAllElementDependencies | Remove all element dependencies. |
| RemoveElementDependency | Remove an element dependency. |
| RemoveElementDependencyById | Remove an element dependency by ID. |
| ResolveConflict | Resolve a conflict if another script has already modified the element. |
