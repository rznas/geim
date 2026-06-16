<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.PrefabStageUtility.OpenPrefab.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| prefabAssetPath | File path for the Prefab Asset to open in Prefab Mode. |
| openedFromInstance | Opens Prefab Mode in context of this Prefab instance GameObject. |
| prefabStageMode | Mode that determines whether to open in isolation or in context. |

### Returns

**PrefabStage** The opened PrefabStage.

### Description

Opens a Prefab Asset in Prefab Mode.

After opening Prefab Mode you can return to the main scenes by using StageUtility.GoToMainStage. See also: Editing in Prefab Mode.
