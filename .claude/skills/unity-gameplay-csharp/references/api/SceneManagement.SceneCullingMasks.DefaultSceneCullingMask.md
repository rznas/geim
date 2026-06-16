<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.SceneCullingMasks.DefaultSceneCullingMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the default culling mask for a Scene. Use the bits from this Scene culling mask for objects that you want to render in both in the Game view and the Scene view.

All normal Scenes start with this culling mask by default. The Scenes created through EditorSceneManager.NewPreviewScene get their own unique Scene culling mask which is why the GameObjects in those Scenes do not show up in the Scene view and Game view by default.
