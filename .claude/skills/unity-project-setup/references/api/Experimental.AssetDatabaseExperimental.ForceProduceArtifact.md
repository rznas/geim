<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AssetDatabaseExperimental.ForceProduceArtifact.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| artifactKey | ArtifactKey specifying which Asset to produce with which Importer type. |

### Returns

**ImportResultID** Unique identifier for the result produced using the specified `artifactKey`.

### Description

Imports an Asset using an Importer type.

Always imports an Asset using an Importer type, both of which are specified in `artifactKey`. Never reuses an existing cached import result.

This returns an invalid ImportResultID in the following curcumstances:

1. An internal error occurs. This is accompanied by an error message in the Unity Log.
2. `artifactKey` contains an invalid Asset reference, or an invalid Importer type.
