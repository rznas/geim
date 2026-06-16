<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.SceneManager.GetSceneByBuildIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildIndex | Build index as shown in the Build Settings window. |

### Returns

**Scene** A reference to the Scene, if valid. If not, an invalid Scene is returned.

### Description

Get a Scene struct from a build index.

This method will return a valid Scene if a Scene has been added to the build settings at the given build index AND the Scene is loaded. If it has not been loaded yet the SceneManager cannot return a valid Scene.
 Additional resources: SceneManager.GetSceneAt, SceneUtility.GetBuildIndexBySceneName.
