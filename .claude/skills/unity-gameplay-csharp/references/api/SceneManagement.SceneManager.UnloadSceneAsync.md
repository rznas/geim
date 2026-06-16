<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.SceneManager.UnloadSceneAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sceneBuildIndex | Index of the Scene in BuildSettings. |
| sceneName | Name or path of the Scene to unload. |
| scene | Scene to unload. |
| options | Scene unloading options. |

### Returns

**AsyncOperation** Use the AsyncOperation to determine if the operation has completed.

### Description

Destroys all GameObjects associated with the given Scene and removes the Scene from the SceneManager.

The given Scene name can either be the full Scene path, the path shown in the Build Settings window or just the Scene name. If only the Scene name is given this will unload the first Scene in the list that matches. If you have multiple Scenes with same name but different paths, you should use the full Scene path. Examples of supported formats:
 `"Scene1"`
 `"Scene2"`
 `"Scenes/Scene3"`
 `"Scenes/Others/Scene3"`
 `"Assets/scenes/others/scene3.unity"`
 
 **Note:** This is case-insensitive and due to it being async there are no guarantees about completion time. 
 **Note:** Assets are currently not unloaded. In order to free up asset memory call Resources.UnloadUnusedAssets. 
 **Note:** It is not possible to UnloadSceneAsync if there are no scenes to load. For example, a project that has a single scene cannot use this static member.
