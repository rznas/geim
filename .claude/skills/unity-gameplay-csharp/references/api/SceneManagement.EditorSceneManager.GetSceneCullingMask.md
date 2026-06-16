<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.EditorSceneManager.GetSceneCullingMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| scene | The scene to get the culling mask from. |

### Returns

**ulong** The scene's current culling mask as a bitfield.

### Description

Return the culling mask set on the given Scene.

The culling mask for a Scene is used by Cameras to determine which Scenes should appear in the Cameras final render target. Culling masks are stored as a bitfield.
