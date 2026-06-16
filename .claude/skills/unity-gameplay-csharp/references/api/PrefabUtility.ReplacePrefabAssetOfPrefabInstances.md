<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.ReplacePrefabAssetOfPrefabInstances.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| prefabInstanceRoots | The Prefab instance roots that will have their Prefab Asset replaced. |
| prefabAssetRoot | The new Prefab Asset used for the Prefab instances. |
| mode | The interaction mode used. |
| settings | The settings used to control the details of the replacements. |

### Description

Replace the Prefab Asset for an array of Prefab instances that exists in Scenes or for nested Prefab instances inside another Prefab.

This function is similar to the ReplacePrefabAssetOfPrefabInstance method, except it will perform the operation on each of the Prefab instances in the input.
