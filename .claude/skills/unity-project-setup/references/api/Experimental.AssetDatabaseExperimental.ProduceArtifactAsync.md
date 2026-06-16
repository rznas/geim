<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AssetDatabaseExperimental.ProduceArtifactAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| artifactKey | ArtifactKey specifying an Asset to import using an Importer type. |

### Returns

**ImportResultID** Unique identifier for the result of Importing the specified `artifactKey`.

### Description

Imports an Asset asynchronously using an Importer type or returns a matching cached result.

Reuses an existing cached import result if one exists for `artifactKey`.

This method returns an invalid ImportResultID in the following curcumstances:

1. An internal error occurs. This is accompanied by an error message in the Unity Log.
2. `artifactKey` contains an invalid Asset reference, or an invalid Importer type.
3. There is no cached result, and an async import operation is queued. Completion of an async request is checked by calling AssetDatabaseExperimental.LookupArtifact.

Additional resources: AssetDatabaseExperimental.LookupArtifact.
