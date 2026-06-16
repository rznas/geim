<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.ApplyAddedGameObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObject | The added GameObject on the Prefab instance to apply. |
| assetPath | The path of the Prefab Asset to apply to. |
| action | The interaction mode for this action. |

### Description

Applies the added GameObject to the Prefab Asset at the given asset path.

This method allows you to apply an added GameObject to an existing Prefab. It mirrors the **Apply** functionality in the Editor, as described in the Apply overrides to the prefab asset documentation. To use this method, you must first add a GameObject to an existing Prefab instance.

An added GameObject is a type of Instance Override. The act of applying the added GameObject to the Prefab means the GameObject becomes part of the Prefab Asset, and is no longer an override on the Prefab instance.

When applying an added GameObject to a Prefab Asset, you must supply the asset path as a parameter. This is because there are some situations where there are multiple possible targets to apply the change to. For example, if the added GameObject has been added to a GameObject that is part of a nested Prefab, you may have the choice of applying the change to the inner nested Prefab Asset, or to the outer root Prefab Asset. Therefore, by specifying the asset path, you make it clear to Unity which Prefab Asset the change must be applied to.

For more information, refer to Override prefab instances.

Additional resources: PrefabUtility.ApplyAddedComponent, PrefabUtility.ApplyObjectOverride, PrefabUtility.ApplyPropertyOverride, PrefabUtility.ApplyRemovedComponent, PrefabUtility.ApplyPrefabInstance, PrefabUtility.ApplyRemovedGameObject.
