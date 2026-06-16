<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.RemovedGameObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Class with information about a GameObject that has been removed from a Prefab instance.

Additional resources: PrefabUtility.ApplyRemovedGameObject, PrefabUtility.RevertRemovedGameObject, PrefabUtility.GetRemovedGameObjects.

### Properties

| Property | Description |
| --- | --- |
| assetGameObject | The GameObject in the Prefab Asset that has been removed in the Prefab instance. |
| parentOfRemovedGameObjectInInstance | The parent of the removed GameObject in the instance. |

### Public Methods

| Method | Description |
| --- | --- |
| Apply | See: PrefabOverride.Apply. |
| GetAssetObject | See PrefabOverride.GetAssetObject. |
| Revert | Restore the removed GameObject to the Prefab instance. See PrefabOverride.Revert. |

### Inherited Members

### Protected Methods

| Method | Description |
| --- | --- |
| FindApplyTargetAssetObject | Finds the object in the Prefab Asset at the given path which will be applied to. |
