<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AssetDatabaseExperimental.ProduceArtifactsAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| artifactKey | GUIDs specifying Assets to import. |
| importerType | The type of the importer class used to import the Assets. |

### Returns

**ImportResultID[]** Unique identifiers for the results of Importing the specified `artifactKey` entries using `importerType`.

### Description

Imports Assets asynchronously using an Importer type and returns matching cached results.

Reuses cached import results for each entry in `artifactKey` where available.

This method returns one or more invalid ImportResultIDs in the following curcumstances:

1. An internal error occurs. This is accompanied by an error message in the Unity Log.
2. The corresponding `artifactKey` entry is an invalid Asset GUID, or `importerType` is invalid.
3. There is no cached result for the corresponding `artifactKey` entry, and an async import operation is queued. Completion of an async request is checked by calling AssetDatabaseExperimental.LookupArtifact.

Additional resources: AssetDatabaseExperimental.LookupArtifact.
