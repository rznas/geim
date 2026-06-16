<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.LoadPrefabContentsIntoPreviewScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| scene | The Scene to load the contents into. |
| prefabPath | The path of the Prefab Asset to load the contents of. |
| rootGameObject | The root GameObject of the loaded Prefab Asset or null if the Prefab couldn't be loaded. |

### Description

Loads a Prefab Asset at a given path into a given preview scene.

You can use this to get the content of the Prefab and modify it directly instead of going through an instance of the Prefab. This is useful for batch operations.

Once you have modified the Prefab you have to write it back using SaveAsPrefabAsset. After that you can either reuse your preview scene for other purposes, or close the preview scene with EditorSceneManager.CloseScene.
