<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.SceneManager.GetSceneByName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name of Scene to find. |

### Returns

**Scene** A reference to the Scene, if valid. If not, an invalid Scene is returned.

### Description

Searches through the Scenes loaded for a Scene with the given name.

The name has to be without the .unity extension. The name can be the last part of the name as displayed in the BuildSettings window in which case the first Scene that matches will be returned. The name can also be the path as displayed in the Build Settings (still without the .unity extension), in which case only the exact match will be returned. This is case insensitive.
