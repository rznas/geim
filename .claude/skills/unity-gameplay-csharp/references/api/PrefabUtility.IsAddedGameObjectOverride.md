<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.IsAddedGameObjectOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObject | The GameObject to check. |

### Returns

**bool** True if the GameObject is an added GameObject.

### Description

Returns true if the given GameObject is added as a child to a Prefab instance as an override.

Returns true if the GameObject exists in the Prefab instance and not in the Prefab Asset. Returns false if the GameObject exists on the Prefab Asset too, or if it’s a child of a regular GameObject which is not a part of a Prefab instance.
