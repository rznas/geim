<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.PrefabOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Class with information about a given override on a Prefab instance.

### Public Methods

| Method | Description |
| --- | --- |
| Apply | Applies the override to the Prefab Asset at the given path. |
| GetAssetObject | Returns the asset object of the override in the outermost Prefab that the Prefab instance comes from. |
| Revert | Reverts the override on the Prefab instance. |

### Protected Methods

| Method | Description |
| --- | --- |
| FindApplyTargetAssetObject | Finds the object in the Prefab Asset at the given path which will be applied to. |
