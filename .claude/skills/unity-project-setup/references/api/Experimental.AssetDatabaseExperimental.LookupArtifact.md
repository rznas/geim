<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AssetDatabaseExperimental.LookupArtifact.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| artifactKey | ArtifactKey specifying an artifact to look up. |

### Returns

**ImportResultID** A unique identifier representing the artifact specified by artifactKey.

### Description

Returns an ImportResultID corresponding to an Import operation.

An invalid [[ImportResultID] is returned in the following circumstances:

1. `artifactKey` contains an invalid or unknown Asset GUID.
2. `artifactKey` contains an invalid or unknown Importer type.
3. `artifactKey` has not produced a result at this time. An async Produce operation may still be in progress for this `artifactKey`.

Additional resources: AssetDatabaseExperimental.ProduceArtifact, AssetDatabaseExperimental.ProduceArtifactAsync.
