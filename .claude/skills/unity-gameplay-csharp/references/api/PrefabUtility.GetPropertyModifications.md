<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.GetPropertyModifications.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetPrefab | Can be a Prefab instance in the scene or a Prefab instance in an Prefab Asset (e.g a Variant asset). |

### Description

Returns all modifications that have been applied to a particular prefab instance in a scene or modifications for a prefab instance in an asset.

This method returns an array of PropertyModification objects that represent all modifications that have been applied to the given Prefab instance.

For details about the fields of the returned PropertyModification objects, refer to SetPropertyModifications .

Alternatively, use GetObjectOverrides, which has Apply and Revert functionality to get property overrides information for a prefab instance.

GetPropertyModifications has the following limitations:

- It returns both default and non-default overrides.
- It returns overrides for all child GameObjects and their components.
- It returns overrides that are no longer valid.
- It can return null.

Additional resources: GetObjectOverrides GetAddedComponents GetRemovedComponents GetAddedGameObjects GetRemovedGameObjects.
