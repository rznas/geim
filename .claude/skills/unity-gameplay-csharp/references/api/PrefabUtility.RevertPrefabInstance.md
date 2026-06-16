<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.RevertPrefabInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceRoot | The root of the Prefab instance. |
| action | The interaction mode for this action. |

### Description

Reverts all overrides on a Prefab instance.

This reverts all property overrides, added and removed components, and added child GameObjects (including added child Prefab instances).

The Transform position and rotation of a root GameObject in a Prefab instance is not cleared, nor are other default override properties.
