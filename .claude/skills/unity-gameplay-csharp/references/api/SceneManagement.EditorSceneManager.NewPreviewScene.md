<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.EditorSceneManager.NewPreviewScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Scene** The new preview scene.

### Description

Creates a new preview scene.

A preview scene is an Editor-only scene that isn't displayed in the Hierarchy window. You can use this method for tooling that needs to access GameObjects but where the scene shouldn't be displayed in the Hierarchy. Examples of preview scenes are the preview area in the bottom of the Inspector, and the scene used when editing a prefab in Prefab Mode. Any object added to a preview scene is only rendered in that scene. You must destroy the preview scene using ClosePreviewScene to prevent leaking scenes.

Additional resources: ClosePreviewScene, OpenPreviewScene.
