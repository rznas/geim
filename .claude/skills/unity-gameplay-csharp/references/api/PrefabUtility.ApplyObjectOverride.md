<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.ApplyObjectOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceComponentOrGameObject | The object on the Prefab instance to apply. |
| assetPath | The path of the Prefab Asset to apply to. |
| action | The interaction mode for this action. |

### Description

Applies all overridden properties on a Prefab instance component or GameObject to the Prefab Asset at the given asset path.

This method allows you to apply modified property values to an existing Prefab. It mirrors the **Apply** functionality in the Editor, as described in the Apply overrides to the prefab asset documentation. To use this method, you must first modify one or more property values on an existing Prefab instance.

 If you pass a GameObject as the object parameter, only the overrides on the GameObject itself are applied (such as layer, tag, and static flags); not its components or child GameObjects. If you pass a Component as the object parameter, only the overrides on that Component are applied. To apply all overrides of a Prefab, you can use PrefabUtility.ApplyPrefabInstance.

Modified property values on a Prefab instance are a type of Instance Override. The act of applying the modified property values to the Prefab means the modifed values become part of the Prefab Asset, and are no longer overrides.

When applying modified property values to a Prefab Asset, you must supply the asset path as a parameter. This is because there are some situations where there are multiple possible targets to apply the change to. For example, if the property values have been modified on a GameObject that is part of a nested Prefab, you may have the choice of applying the change to the inner nested Prefab Asset, or to the outer root Prefab Asset. Therefore, by specifying the asset path, you make it clear to Unity which Prefab Asset the change must be applied to.

For more information, refer to Override prefab instances.

Additional resources: PrefabUtility.ApplyAddedComponent, PrefabUtility.ApplyAddedGameObject, PrefabUtility.ApplyPropertyOverride, PrefabUtility.ApplyRemovedComponent, PrefabUtility.ApplyPrefabInstance, PrefabUtility.ApplyRemovedGameObject.
