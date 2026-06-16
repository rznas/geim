<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.FindValidUploadPrefabInstanceRoot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| target | GameObject to process. |

### Returns

**GameObject** Return the root game object of the Prefab Asset.

### Description

Returns the root GameObject of the Prefab instance if that root Prefab instance is a parent of the Prefab.

A Prefab internally consists of a Prefab object and the list of objects used for the Prefab. The Prefab object has a reference to the root GameObject. Also, if the Prefab is an instance, it contains a reference to the Prefab Asset it was created from and a list of the overrides (if any) on the instance.

This works in the same way as PrefabUtility.FindRootGameObjectWithSameParentPrefab but it will return the root GameObject of the Prefab Asset. This is useful if you have a disconnected Prefab instance object and you want to know the root game object of the Prefab Asset which it used to be connected to.
