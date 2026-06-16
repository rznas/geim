<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.IsAnyPrefabInstanceRoot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObject | The GameObject to check. |

### Returns

**bool** True if the GameObject is the root GameObject of any Prefab instance.

### Description

Is the GameObject the root of any Prefab instance?

Returns true if the GameObject is the root GameObject of a Prefab instance or the root GameObject of a nested Prefab.

This also returns true for a root GameObject of a nested Prefab instance inside a Prefab Asset.

The method return false for the root GameObject of a Prefab Asset itself, except if it’s a Prefab Variant, in which case it returns true.


 *Overview of which objects are Prefab instance roots.*

Additional resources: IsOutermostPrefabInstanceRoot.
