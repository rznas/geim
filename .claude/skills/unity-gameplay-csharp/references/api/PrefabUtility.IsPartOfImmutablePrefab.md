<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.IsPartOfImmutablePrefab.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| componentOrGameObject | The object to check. Must be a component or GameObject. |

### Returns

**bool** True if the object is part of a Prefab that cannot be edited.

### Description

Returns true if the given object is part of a Prefab that cannot be edited.

If the object is part of a Prefab Asset, the asset itself is checked. If the object is part of a Prefab instance, its corresponding asset is checked.

Examples of immutable prefabs are model prefabs and prefabs in read-only folders.

For Prefab contents loaded in prefab editing mode, this method doesn't check the prefab asset the loaded contents are loaded from, since these prefab contents are loaded into a preview scene and are not part of an asset while being edited in prefab editing mode. This means that for prefab contents in prefab editing mode, the method only returns true for objects that are part of a prefab instance that have corresponding assets that are immutable. To check if an object is part of the prefab's contents in prefab editing mode, use PrefabStage.IsPartOfPrefabContents.
