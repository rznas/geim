<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.ImportResultID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Uniquely identifies a product of an Import operation performed on an Asset Source by an Importer class.

For example, a Material (.mat) Asset file imported with the built-in Importer will generate a result with an ImportResultID unique to that combination of Asset GUID and importer. The Importer class can be specified in some APIs such as AssetDatabaseExperimental.ProduceArtifactsAsync, which takes an optional `importerType` parameter.

Additional resources: AssetDatabaseExperimental.LookupArtifact, AssetDatabaseExperimental.ProduceArtifact, AssetDatabaseExperimental.ProduceArtifactAsync.

### Properties

| Property | Description |
| --- | --- |
| isValid | True if this refers to the product of an Import operation performed on an Asset Source by an Importer class, otherwise false. |

### Public Methods

| Method | Description |
| --- | --- |
| Equals | Returns true if this ImportResultID is equal to another ImportResultID, otherwise false. |
| GetHashCode | Computes a hash code for this ImportResultID. |
| ToString | Returns a string representation of the ImportResultID. |
