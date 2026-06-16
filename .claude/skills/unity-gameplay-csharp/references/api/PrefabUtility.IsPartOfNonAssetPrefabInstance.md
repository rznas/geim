<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.IsPartOfNonAssetPrefabInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| componentOrGameObject | The object to check. Must be a component or GameObject. |

### Returns

**bool** True if the object is part of a Prefab instance that is not inside a Prefab Asset.

### Description

Returns true if the given object is part of a Prefab instance that is not part of a Prefab Asset.

Returns true if the object is part of a Prefab instance in a scene. 

If the given object is part of a Prefab instance where the asset is missing, it will still return true.
