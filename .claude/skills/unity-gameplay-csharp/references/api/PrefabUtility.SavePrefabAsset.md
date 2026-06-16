<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.SavePrefabAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| asset | Any GameObject that is part of the Prefab Asset to save. |
| savedSuccessfully | The result of the save action, either successful or unsuccessful. Use this together with the console log to get more insight into the save process. |

### Returns

**GameObject** The root GameObject of the saved Prefab Asset.

### Description

Saves the version of an existing Prefab Asset that exists in memory back to disk.

The GameObject must be part of an existing prefab asset. If you pass a GameObject from an instance of a prefab asset in a scene, Unity automatically finds and saves the corresponding prefab asset instead.

Additional resources: PrefabUtility.SaveAsPrefabAsset, PrefabUtility.GetCorrespondingObjectFromSource.
