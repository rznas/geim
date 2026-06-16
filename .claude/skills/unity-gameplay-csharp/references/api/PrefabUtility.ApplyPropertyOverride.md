<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.ApplyPropertyOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceProperty | The SerializedProperty representing the property to apply. |
| assetPath | The path of the Prefab Asset to apply to. |
| action | The interaction mode for this action. |

### Description

Applies a single overridden property on a Prefab instance to the Prefab Asset at the given asset path.

This method allows you to apply a single modified property value to an existing Prefab Asset. It mirrors the **Apply** functionality in the Editor, as described in the Apply overrides to the prefab asset documentation. To use this method, you must first modify a property value on an existing Prefab instance.

Modified property values on a Prefab instance are a type of Instance Override. The act of applying a modified property value to the Prefab means the modifed value becomes part of the Prefab Asset, and is no longer an override on the Prefab instance.

When applying a modified property value to a Prefab Asset, you must supply the asset path as a parameter. This is because there are some situations where there are multiple possible targets to apply the change to. For example, if the property value has been modified on a GameObject that is part of a nested Prefab, you may have the choice of applying the change to the inner nested Prefab Asset, or to the outer root Prefab Asset. Therefore, by specifying the asset path, you make it clear to Unity which Prefab Asset the change must be applied to.

For more information, refer to Override prefab instances.

Note that you can apply default override properties with this method, unlike with other apply methods, which will not apply default override properties.

If a property is an array element and the corresponding array element doesn't exist in the Prefab Asset because the array is shorter there, ApplyPropertyOverride applies the entire array. If the InteractionMode is set to UserAction, Unity shows a dialog box which provides options to proceed or cancel.

Additional resources: PrefabUtility.ApplyAddedComponent, PrefabUtility.ApplyAddedGameObject, PrefabUtility.ApplyObjectOverride, PrefabUtility.ApplyRemovedComponent, PrefabUtility.ApplyPrefabInstance, PrefabUtility.ApplyRemovedGameObject.
