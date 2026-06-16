<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.PrefabStage.IsPartOfPrefabContents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObject | The GameObject to check. |

### Returns

**bool** True if the GameObject is part of the Prefab contents.

### Description

Returns true if the given GameObject is part of the loaded Prefab Asset contents in the Prefab stage.

Returns false for GameObjects that are part of the editing environment in the Prefab stage, or not part of the Prefab stage at all.
