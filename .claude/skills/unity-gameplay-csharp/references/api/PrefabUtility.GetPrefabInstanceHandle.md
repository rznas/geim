<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.GetPrefabInstanceHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceComponentOrGameObject | An object from the Prefab instance. |

### Returns

**Object** The Prefab instance handle.

### Description

Retrieves the PrefabInstance object for the outermost Prefab instance the provided object is part of.

If the provided object is not part of a Prefab instance, the function returns null.

You can use this to check if two different GameObjects or Components are part of the same Prefab instance by comparing the objects. It cannot be used to compare a Prefab instance with a nested Prefab that’s part of it, since the method returns the handle of the outermost Prefab instance that an object is part of. It can however be used to compare an added child Prefab instance with the parent Prefab instance it’s added to, since an added object is not part of the Prefab instance it’s added to.

The method works for Prefab instances in Scenes as well as Prefab instances inside Prefab assets. If the method returns a valid Prefab instance handle for an object inside a Prefab Asset, it means the object is part of a Prefab instance which is either a nested Prefab inside the asset, or the base Prefab instance of a Prefab Variant.
