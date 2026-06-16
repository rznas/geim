<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.GetObjectOverrides.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| prefabInstance | The Prefab instance to get information about. |
| includeDefaultOverrides | If true, components will also be included even if they only contain overrides that are default overrides. False by default. |

### Returns

**List<ObjectOverride>** List of objects with information about object overrides.

### Description

Retrieves a list of objects with information about object overrides on the Prefab instance.

If includeDefaultOverrides is true, components will also be included even if they only contain overrides that are default overrides. This parameter is false by default.

Additional resources: ObjectOverride
