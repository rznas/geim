<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.UnloadPrefabContents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| contentsRoot | The root of the loaded Prefab contents. |

### Description

Releases the content from a Prefab previously loaded with LoadPrefabContents from memory.

This will destroy the GameObject in memory and release the isolated Scene used to contain the Prefab content.

The root GameObject will not be available after this call. The Prefab Asset itself is not affected by this call.

Additional resources: PrefabUtility.LoadPrefabContents, PrefabUtility.SaveAsPrefabAsset, EditPrefabContentsScope.
