<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.EditorSceneManager.LoadSceneAsyncInPlayMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Path to Scene to load. |
| parameters | Parameters to apply to loading. See LoadSceneParameters. |

### Returns

**AsyncOperation** Use the AsyncOperation to determine if the operation has completed.

### Description

This method allows you to load a Scene during playmode in the editor, without requiring the Scene to be included in the Build Settings Scene list.

The use case for this is to emulate Asset bundles while loading scenes in play mode in the editor. When including a Scene in an asset bundle, you don't add the Scene to build settings. This means you can't load the Scene during play mode using the normal LoadSceneAsync method. Using this method instead of LoadSceneAsync allows you to load the Scene during play mode without requiring it to be in the Build Settings Scene list. This means your code needs to detect whether the game is running in the editor or not, and use this method (LoadSceneAsyncInPlayMode) when in the editor, and LoadSceneAsync when in the built version.
