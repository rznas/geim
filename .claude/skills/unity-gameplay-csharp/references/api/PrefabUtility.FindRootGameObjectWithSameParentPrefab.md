<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.FindRootGameObjectWithSameParentPrefab.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| target | The GameObject to use in the search. |

### Returns

**GameObject** The GameObject at the root of the Prefab.

### Description

Retrieves the topmost GameObject that has the same Prefab parent as `target`.

A Prefab internally consists of a Prefab object and the list of objects used for the Prefab. The Prefab object has a reference to the root GameObject. Also, if the Prefab is an instance, it contains a reference to the Prefab Asset it was created from and a list of the overrides (if any) on the instance.

This method only returns a valid result when a Prefab instance, or a GameObject that has been disconnected from a Prefab is used.

The method finds the Transform associated with the supplied target GameObject. It checks the parents of the Transform tree as long as the Transform was instantiated from the same Prefab Asset. Once it reaches the Transform that matches the Transform on the root GameObject of the Prefab Asset, it will stop and return the GameObject instance.

This method is similar to PrefabUtility.FindPrefabRoot but it also works if the Prefab instance has been disconnected. This is useful if you have a disconnected Prefab instance and you want to reconnect it to the Prefab Asset.
