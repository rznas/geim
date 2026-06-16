<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPostprocessor.OnPostprocessMeshHierarchy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| root | The root GameObject of the imported Asset. |

### Description

This function is called when a new transform hierarchy has finished importing.

The ModelImporter calls this function for every root transform hierarchy in the source model file. This lets you change each root transform hierarchy before other artifacts are imported, such as the avatar or animation clips.

If this function destroys the root hierarchy, any associated animation clips are not imported.
