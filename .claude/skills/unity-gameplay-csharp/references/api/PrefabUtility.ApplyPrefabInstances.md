<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.ApplyPrefabInstances.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceRoots | The roots of the given Prefab instances. |
| action | The interaction mode for this action. |

### Description

Applies all overrides from a list of Prefab instances to their Prefab Assets.

This method allows you to apply the complete modified state of Prefab instances to their source Prefab Assets, which includes all property overrides, added and removed components, and added child GameObjects (including added child Prefab instances).

It mirrors the functionality of the "Apply All" button in the overrides menu in the editor. To use this method, you must first modify an existing Prefab instance in some way, such as modifying properties, or adding or removing GameObjects or components.

Modifications to a Prefab instance that have not been applied are called instance overrides. The act of applying the modifications means the modifications become part of the Prefab Asset, and are no longer overrides.

When applying all modifications to a Prefab Asset using this method to nested Prefabs or Prefab variants, the changes are always applied to the outermost Prefab. To apply changes to inner Prefabs, you can use the other methods such as PrefabUtility.ApplyAddedComponent, PrefabUtility.ApplyAddedGameObject, PrefabUtility.ApplyRemovedComponent, PrefabUtility.ApplyRemovedGameObject and PrefabUtility.ApplyObjectOverride.

The Transform position and rotation of a root GameObject in a Prefab instance cannot be applied, nor can other default override properties.

You can read more in the user manual about modifying and applying changes to Prefab instances.

Additional resources: PrefabUtility.ApplyPrefabInstance, PrefabUtility.ApplyAddedComponent, PrefabUtility.ApplyAddedGameObject, PrefabUtility.ApplyObjectOverride, PrefabUtility.ApplyPropertyOverride, PrefabUtility.ApplyRemovedComponent, PrefabUtility.ApplyRemovedGameObject.
