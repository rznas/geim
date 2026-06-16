<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.ApplyRemovedComponent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceGameObject | The GameObject on the Prefab instance which the component has been removed from. |
| assetComponent | The component on the Prefab Asset corresponding to the removed component on the instance. |
| action | The interaction mode for this action. |

### Description

Removes the component from the Prefab Asset which has the component on it.

When a component is removed from a Prefab instance, that modification is a type of Instance Override. The act of applying the change (the removal of the component) to the Prefab means the component is removed from the Prefab Asset itself, and is no longer an override on the Prefab instance.

This method allows you to apply a "removed component" change to an existing Prefab. It mirrors the **Apply** functionality in the Editor, as described in the Apply overrides to the prefab asset documentation. To use this method, you must first remove a component from an existing Prefab instance.

For more information, refer to Override prefab instances.

Additional resources: PrefabUtility.ApplyAddedComponent, PrefabUtility.ApplyAddedGameObject, PrefabUtility.ApplyObjectOverride, PrefabUtility.ApplyPropertyOverride, PrefabUtility.ApplyPrefabInstance, PrefabUtility.ApplyRemovedGameObject.
