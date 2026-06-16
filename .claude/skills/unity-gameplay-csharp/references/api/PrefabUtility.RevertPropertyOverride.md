<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.RevertPropertyOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| action | The interaction mode for this action. |
| instanceProperty | The SerializedProperty representing the property to revert. |

### Description

Reverts a single property override on a Prefab instance.

After the apply action, the property on the Prefab instance is no longer marked as an override and now reflects the value of the Prefab Asset.

Note that you can revert default override properties with this method, unlike with other apply methods, which will not apply default override properties.
