<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AssetDatabaseExperimental.ProduceArtifact.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| artifactKey | ArtifactKey specifying what artifact to produce with which importer class. |

### Returns

**ImportResultID** Unique identifier for the artifact produced from the specified `artifactKey`.

### Description

Imports an Asset using an Importer type or returns a matching cached result.

Reuses an existing cached import result if one exists for `artifactKey`.

This method returns an invalid ImportResultID in the following curcumstances:

1. An internal error occurs. This is accompanied by an error message in the Unity Log.
2. `artifactKey` contains an invalid Asset reference, or an invalid Importer type.

Use AssetDatabaseExperimental.ForceProduceArtifact where it is not appropriate to use a cached result.
