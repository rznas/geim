<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.Stage.OnFirstTimeOpenStageInSceneView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sceneView | The Scene view the Stage is opened in. |

### Description

Unity calls this method the first time a Stage is opened for a specific Asset, for a specific Scene view.

Classes that inherit from Stage can implement this method to configure the Scene view in a suitable way for this Stage.
