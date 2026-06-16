<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.EditorSceneManager.IsPreviewSceneObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The object to check. |

### Returns

**bool** Returns true if this object is part of a preview scene.

### Description

Checks whether an object is part of a preview scene.

A preview scene is an Editor-only scene that isn't displayed in the Hierarchy window. You can use preview scenes for tooling that needs to access GameObjects but where the scene shouldn't be displayed in the Hierarchy. Examples of preview scenes are the preview area in the bottom of the Inspector, and the scene used when editing a prefab in Prefab Mode.
