<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.PropertyPathPart.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A PropertyPathPart represents a single element of the path.

PropertyPathPartKind.Name -> ".{name}" PropertyPathPartKind.Index -> "[{index}]" PropertyPathPartKind.Key -> "[{key}]"

### Properties

| Property | Description |
| --- | --- |
| Index | The Index of the part. This will only be set when using PropertyPathPartKind.Index |
| IsIndex | Returns true if the part is PropertyPathPartKind.Index. |
| IsKey | Returns true if the part is PropertyPathPartKind.Key. |
| IsName | Returns true if the part is PropertyPathPartKind.Name. |
| Key | The Key of the part. This will only be set when using PropertyPathPartKind.Key |
| Kind | The PropertyPathPartKind for this path. This determines how algorithms will resolve the path. |
| Name | The Name of the part. This will only be set when using PropertyPathPartKind.Name |

### Constructors

| Constructor | Description |
| --- | --- |
| PropertyPathPart | Initializes a new PropertyPathPart with the specified name. |

### Public Methods

| Method | Description |
| --- | --- |
| Equals | Indicates whether this instance and a specified object are equal. |
