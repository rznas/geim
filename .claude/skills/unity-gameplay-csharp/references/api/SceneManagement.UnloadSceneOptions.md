<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.UnloadSceneOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Scene unloading options passed to SceneManager.UnloadScene.

### Properties

| Property | Description |
| --- | --- |
| None | Unload the scene without any special options. |
| UnloadAllEmbeddedSceneObjects | Unloads all objects that are loaded from the scene's serialized file. Without this flag, only GameObject and Components within the scene's hierarchy are unloaded.Note: Objects that are dynamically created during the build process can be embedded in the scene's serialized file. This can occur when asset types are created and referenced inside the scene's post-processor callback. Some examples of these types are textures, meshes, and scriptable objects. Assets from your assets folder are not embedded in the scene's serialized file. Note: This flag does not unload assets which can be referenced by other scenes. |
