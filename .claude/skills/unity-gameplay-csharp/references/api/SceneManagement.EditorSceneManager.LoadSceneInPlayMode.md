<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.EditorSceneManager.LoadSceneInPlayMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Path to Scene to load. |
| parameters | Parameters used to load the Scene LoadSceneParameters. |

### Returns

**Scene** Scene that is loading.

### Description

This method allows you to load a Scene during playmode in the editor, without requiring the Scene to be included in the Build Settings Scene list.

The use case for this is to emulate Asset bundles while loading scenes in play mode in the editor. When including a scene in an asset bundle, you don't add the scene to build settings. This means you can't load the scene during play mode using the normal LoadScene method. Using this method instead of LoadScene allows you to load the scene during play mode without requiring it to be in the Build Settings scene list. This means your code needs to detect whether the game is running in the editor or not, and use this method (LoadSceneInPlayMode) when in the editor, and LoadScene when in the built version.

Note that this function behaves the same as SceneManager.LoadScene meaning that the load does not happen immedately but is guarantee to complete in the next frame. This behavior also means that the Scene that is returned has its state set to Loading.
