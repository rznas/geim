<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.StageUtility.IsGameObjectRenderedByCamera.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObject | The GameObject to check. |
| camera | The camera to check. |

### Returns

**bool** True if the GameObject is rendered by the camera.

### Description

Is the given GameObject rendered by the given Camera?

This is not related to culling, but simply checks if the stages of the GameObject and camera respectively means that the Camera is able to render the GameObject.
