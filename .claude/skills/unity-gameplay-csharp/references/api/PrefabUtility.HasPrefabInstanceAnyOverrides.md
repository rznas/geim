<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.HasPrefabInstanceAnyOverrides.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceRoot | The root GameObject of the Prefab instance to check. |
| includeDefaultOverrides | Set to true to consider default overrides as overrides too. |

### Returns

**bool** Returns true if there are any overrides.

### Description

Returns true if the given Prefab instance has any overrides.

This method is the quickest way to check if a Prefab instance has any overrides, when not needing to know what those overrides are.

The includeDefaultOverrides parameter should normally be set to false, except for debugging purposes. If set to true, the method will normally return true for all Prefabs instances, since all Prefab instances have default overrides for the root position and rotation, among others.
