<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AssetDatabaseExperimental.LookupArtifacts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| guids | Array of GUIDs of Assets to look up. |
| hashes | Array of ImportResultIDs representing artifacts produced from `guids`. |
| importerType | Type of the importer class used to produce the artifacts from `guids`. |
| hashesOut | Array of ImportResultIDs representing artifacts produced from `guids`. |

### Description

Returns ImportResultIDs corresponding to multiple Import operations.

Invalid [[ImportResultID]s are returned in the following circumstances:

1. The corresponding `guids` entry is invalid or unknown.
2. `importerType` is invalid.
3. The Import process has not produced a result for the corresponding Asset and Importer type at this time. An async Produce operation may still be in progress for this Asset and Importer type.

Additional resources: AssetDatabaseExperimental.ProduceArtifact, AssetDatabaseExperimental.ProduceArtifactAsync.
