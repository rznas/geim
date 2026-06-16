<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Android.Gradle.Manifest.Application.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The C# definition of the `<application>` Android Manifest element.

For more information about the element, see Android's documentation: [Application element](https://developer.android.com/guide/topics/manifest/application-element)

### Properties

| Property | Description |
| --- | --- |
| ActivityAliasList | List of <activity-alias> child elements. |
| ActivityList | List of <activity> child elements. |
| Attributes | The attributes container for the <application> element. |
| MetaDataList | List of <meta-data> child elements. |
| Profileable | Child element <profileable>. |
| ProviderList | List of <provider> child elements. |
| ReceiverList | List of <receiver> child elements. |
| ServiceList | List of <service> child elements. |
| UsesLibraryList | List of <uses-library> child elements. |
| UsesNativeLibraryList | List of <uses-native-library> child elements. |

### Constructors

| Constructor | Description |
| --- | --- |
| Application | Element constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| AddMetaDataResource | Adds <meta-data> child element that specifies a resource. |
| AddMetaDataValue | Adds <meta-data> child element that specifies a resource value. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| CustomElements | Custom child elements. |

### Public Methods

| Method | Description |
| --- | --- |
| AddCustomElement | Adds a new element as a child. |
| GetAllAttributes | Gets all attributes on this element. |
| GetCustomAttribute | Gets a custom attribute by attribute name. |
| GetID | Gets the unique ID of the element. |
| GetName | Gets the element name. |
| GetUniqueName | Gets a unique name of the element. |
| Remove | Removes this element from the file. |
| RemoveCustomAttribute | Removes a custom attribute by name. |
| ResolveConflict | Resolve a conflict if element was already modified by another script. |
| SetCustomAttribute | Sets a custom attribute with name and value. |
