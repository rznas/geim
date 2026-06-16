<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.EditorSceneManager.DetectCrossSceneReferences.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| scene | Scene to check for cross-Scene references. |

### Returns

**bool** Was any cross-Scene references found.

### Description

Detects cross-Scene references in a Scene.

Warnings are logged to the console if any object in the input Scene has references to objects in other Scenes.
