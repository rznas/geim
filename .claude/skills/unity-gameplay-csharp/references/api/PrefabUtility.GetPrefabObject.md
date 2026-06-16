<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.GetPrefabObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetObject | An object contained within a Prefab object. |

### Returns

**Object** The Prefab the object is contained in.

### Description

Retrieves the enclosing Prefab for any object contained within.

A Prefab internally consists of a Prefab object and the list of objects used for the Prefab. The Prefab object has a pointer to the root game object and if the Prefab is an instance then it also contains a pointer to the asset it was created from and a list of modifications done to the instance.

This checks if the object is part of a Prefab, either instance or asset. If so it returns the Prefab object.
