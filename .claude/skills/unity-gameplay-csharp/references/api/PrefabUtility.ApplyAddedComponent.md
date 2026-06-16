<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.ApplyAddedComponent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| action | The interaction mode for this action. |
| assetPath | The path of the Prefab Asset to apply to. |
| component | The added component on the Prefab instance to apply. |

### Description

Applies the added component to the Prefab Asset at the given asset path.

This method allows you to apply an added component to an existing prefab. It mirrors the **Apply** functionality in the Editor, as described in the Apply overrides to the prefab asset documentation. To use this method, you must first add a component to an existing prefab instance.

An added component is a type of Instance Override. The act of applying the added component to the prefab means the component becomes part of the prefab asset, and is no longer an override on the prefab instance.

You must provide the asset path because nested prefabs might offer multiple targets for applying changes. For example, a component added to a GameObject in a nested Prefab could be applied to either the inner nested prefab asset or the outer root prefab asset. The asset path specifies which prefab asset receives the change.

To get the asset path of the prefab that contains the component, use PrefabUtility.GetPrefabAssetPathOfNearestInstanceRoot. This method returns the path to the prefab asset file that corresponds to the nearest prefab instance root in the Hierarchy.

For more information, refer to Override prefab instances.

Additional resources: PrefabUtility.ApplyAddedGameObject, PrefabUtility.ApplyObjectOverride, PrefabUtility.ApplyPropertyOverride, PrefabUtility.ApplyRemovedComponent, PrefabUtility.ApplyPrefabInstance, PrefabUtility.ApplyRemovedGameObject.
