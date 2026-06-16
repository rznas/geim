<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.IsPartOfPrefabInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| componentOrGameObject | The object to check. Must be a component or GameObject. |

### Returns

**bool** True if the object is part of a Prefab instance.

### Description

Returns true if the given object is part of a Prefab instance.

It also returns true if the given object is part of Prefab instance that is inside a Prefab Asset. In that case both IsPartOfPrefabAsset and IsPartOfPrefabInstance will return true.

If the given object is part of a Prefab instance where the asset is missing, it will still return true.

To know if a given object is part of a Prefab instance but not part of a Prefab Asset, use IsPartOfNonAssetPrefabInstance.
