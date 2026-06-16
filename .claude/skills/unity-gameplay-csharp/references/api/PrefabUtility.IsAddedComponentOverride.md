<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.IsAddedComponentOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| component | The component to check. |

### Returns

**bool** True if the component is an added component.

### Description

Returns true if the given component is added to a Prefab instance as an override.

Returns true if the component exists on the Prefab instance and not on the Prefab Asset. Returns false if the component exists on the Prefab Asset too, or if it’s a component on a regular GameObject which is not part of a Prefab instance.
