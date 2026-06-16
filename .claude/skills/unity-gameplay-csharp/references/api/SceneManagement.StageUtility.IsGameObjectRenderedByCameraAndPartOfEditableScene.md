<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.StageUtility.IsGameObjectRenderedByCameraAndPartOfEditableScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObject | The GameObject to check. |
| camera | The Camera to check. |

### Returns

**bool** True if the GameObject is rendered by the camera and part of an editable scene.

### Description

Specifies whether the given Camera currently renders the given GameObject and the GameObject is also part of an editable scene.

This is not related to culling, but simply checks if the stages of the GameObject and camera respectively means that the Camera is able to render the GameObject, and additionally that the scene the GameObject is in is editable, and not part of a visible but non-editable environment.
