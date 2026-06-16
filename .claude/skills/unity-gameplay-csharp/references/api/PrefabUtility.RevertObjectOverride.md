<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.RevertObjectOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| action | The interaction mode for this action. |
| instanceComponentOrGameObject | The object on the Prefab instance to revert. |

### Description

Reverts all overridden properties on a Prefab instance component or GameObject.

If the specified object is a GameObject, only the overrides on the GameObject itself are reverted; not its components or child GameObjects.

After the `action` is applied, the properties of the object on the Prefab instance are no longer marked as overrides and now reflect the values of the Prefab Asset.

The Transform position and rotation of a root GameObject in a Prefab instance cannot be reverted, nor can other default override properties.
