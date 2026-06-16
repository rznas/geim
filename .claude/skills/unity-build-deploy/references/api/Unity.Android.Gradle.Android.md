<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Android.Gradle.Android.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The C# definition of the `android` element in a gradle file.

The main block that contains all Android-specific build options. For more information about the element, see Android's documentation: [Android Gradle plugin API](https://developer.android.com/reference/tools/gradle-api/com/android/build/api/dsl/package-summary)

### Properties

| Property | Description |
| --- | --- |
| AfterEvaluate | The C# definition of the AfterEvaluate element in a gradle file. |
| AndroidComponents | The C# definition of the androidComponents element in a gradle file. |
| AndroidResources | The C# definition of the androidResources element in a gradle file. |
| AssetPacks | The C# definition of the assetPacks property. |
| BuildToolsVersion | The C# definition of the buildToolsVersion property. |
| BuildTypes | The C# definition of the buildTypes element in a gradle file. |
| CompileOptions | The C# definition of the compileOptions element in a gradle file. |
| CompileSdk | Deprecated, use CompileSdkVersion instead. |
| DefaultConfig | The C# definition of the defaultConfig property. |
| ExternalNativeBuild | The C# definition of the externalNativeBuild element in a gradle file. |
| FlavorDimensions | The C# definition of the flavorDimensions property. |
| Lint | The C# definition of the lint element in a gradle file. |
| Namespace | The C# definition of the namespace property. |
| NdkPath | The C# definition of the ndkPath property. |
| Packaging | The C# definition of the packaging element in a gradle file. |
| ProductFlavors | The C# definition of acustom productFlavor element in a gradle file. |
| SigningConfigs | The C# definition of the signingConfigs element in a gradle file. This element is a block and contains signingConfig elements. |
| SourceSets | The C# definition of the sourceSets property. |

### Constructors

| Constructor | Description |
| --- | --- |
| Android | Element constructor. |

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
