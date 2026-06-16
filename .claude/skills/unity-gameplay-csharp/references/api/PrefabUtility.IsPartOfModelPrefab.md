<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.IsPartOfModelPrefab.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| componentOrGameObject | The object to check. Must be a component or GameObject. |

### Returns

**bool** True if the object is part of a Model Prefab.

### Description

Returns true if the given object is part of a Model Prefab Asset or Model Prefab instance.

An object is part of a Model Prefab instance if it has a Model Prefab as outermost Prefab instance root. To get the outermost Prefab instance root, use GetOutermostPrefabInstanceRoot.
