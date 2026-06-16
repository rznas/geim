<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Content.ContentNamespace.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides functionality for grouping loaded Archive files into separate namespaces.

You can use the ContentNamespace.Default namespace, or create your own custom namespace with ContentNamespace.GetOrCreateNamespace.

 **Note:** A ContentNamespace name must contain only alphanumeric characters and can't be longer than 16 characters.

 Additional resources: ArchiveFileInterface.MountAsync.

### Static Properties

| Property | Description |
| --- | --- |
| Default | Default ContentNamespace object. |

### Properties

| Property | Description |
| --- | --- |
| IsValid | Indicates whether the ContentNamespace still exists. |

### Public Methods

| Method | Description |
| --- | --- |
| Delete | Destroys the specified ContentNamespace object. |
| GetName | Retrieves the name of the ContentNamespace. |

### Static Methods

| Method | Description |
| --- | --- |
| GetAll | Retrieves all existing ContentNamespace objects. |
| GetOrCreateNamespace | Retrieves or creates the ContentNamespace if it doesn't exist. |
