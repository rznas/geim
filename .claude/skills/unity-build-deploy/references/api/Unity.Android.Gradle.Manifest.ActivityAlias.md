<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Android.Gradle.Manifest.ActivityAlias.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The C# definition of the `<activity-alias>` Android Manifest element.

For more information about the element, see Android's documentation: [ActivityAlias element](https://developer.android.com/guide/topics/manifest/activity-alias-element)

### Properties

| Property | Description |
| --- | --- |
| Attributes | The attributes container for the <activity-alias> element. |
| IntentFilterList | List of <intent-filter> child elements. |
| MetaDataList | List of <meta-data> child elements. |

### Constructors

| Constructor | Description |
| --- | --- |
| ActivityAlias | Element constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| AddMetaDataResource | Adds a <meta-data> child element that specifies a resource for the <activity-alias>. |
| AddMetaDataValue | Adds a <meta-data> child element that specifies a resource value for the <activity-alias>. |
| GetLauncherIntentFilter | Gets the <intent-filter> element that contains the LAUNCHER category for the <activity-alias>. |

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
