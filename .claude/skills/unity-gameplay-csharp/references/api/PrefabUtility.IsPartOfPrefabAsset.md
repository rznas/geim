<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.IsPartOfPrefabAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| componentOrGameObject | The object to check. Must be a component or GameObject. |

### Returns

**bool** True if the object is part of a Prefab Asset.

### Description

Returns true if the given object is part of a Prefab Asset.

Returns false if the object is part of a Prefab instance in a scene. To check if an object is part of a Prefab instance in a scene, use PrefabUtility.IsPartOfNonAssetPrefabInstance.

It also returns false for prefab contents loaded in prefab editing mode, since these prefab contents are loaded into a preview scene and are not part of an asset while being edited in prefab editing mode. To check if an object is part of the prefab's contents in prefab editing mode, use PrefabStage.IsPartOfPrefabContents.
