<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.SceneManager.UnloadScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sceneBuildIndex | Index of the Scene in the Build Settings to unload. |
| sceneName | Name or path of the Scene to unload. |
| scene | Scene to unload. |

### Returns

**bool** Returns true if the Scene is unloaded.

### Description

Destroys all GameObjects associated with the given Scene and removes the Scene from the SceneManager.

**Note:** It is not recommended to use this function but instead use UnloadSceneAsync.

**Warning**: This cannot be called during various physics and visibility callbacks like OnTriggerEnter or OnBecameVisible. This limitation is the reason this function is not recommended to use.

The given Scene name can either be the full Scene path, the path shown in the Build Settings window or just the Scene name. If only the Scene name is given this will load the first Scene in the list that matches. If you have multiple Scenes with same name but different paths, you should use the full Scene path. Examples of supported formats:
 `"Scene1"`
 `"Scene2"`
 `"Scenes/Scene3"`
 `"Scenes/Others/Scene3"`
 `"Assets/scenes/others/scene3.unity"`
 
 **Note:** sceneName is case insensitive. 
 **Note:** Assets are currently not unloaded, in order to free up asset memory call Resources.UnloadAllUnusedAssets.
