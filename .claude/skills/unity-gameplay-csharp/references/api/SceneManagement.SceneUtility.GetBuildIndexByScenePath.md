<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.SceneUtility.GetBuildIndexByScenePath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| scenePath | Scene path (e.g: "Assets/Scenes/Scene1.unity"). |

### Returns

**int** Build index.

### Description

Get the build index from a Scene path.

The build index refers to the index into the list of Scenes as specified in the Build Settings window.

If the scene isn't found it returns -1.
