<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.ArtifactKey.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An ArtifactKey is used for specifying an artifact to lookup or produce.

One example of producing an artifact is to run and importer on a specific asset. The importer is specified by type (e.g. typeof(MyImporter) and the asset by its guid. From these two you can create an ArtifactKey and use it to ask the assetdatabase to produce the artifact. You can also create an ArtifactKey from only a guid. In that case the AssetDatabase will automatically select the importer from the list of valid importers.

### Properties

| Property | Description |
| --- | --- |
| guid | The guid specifying the asset in question. |
| importerType | The managed type of the importer to use for producing the artifact. |
| isValid | Returns true is the hash value is valid. (Read Only) |

### Constructors

| Constructor | Description |
| --- | --- |
| ArtifactKey | Construct an ArtifactKey. |
