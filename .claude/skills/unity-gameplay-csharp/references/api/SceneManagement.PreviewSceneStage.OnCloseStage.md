<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.PreviewSceneStage.OnCloseStage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unity calls this method when the Stage is closed. Classes that inherit from PreviewSceneStage should implement cleanup logic in this method.

A Stage can remain open even after another Stage becomes the active Stage. Unity only closes a Stage once it's no longer visible in the Scene view breadcrumb bar. OnOpenStage and OnCloseStage is only called once each.

If you override this method, call the base method base.OnCloseStage() from within the implementation to unload the preview Scene associated with the stage. PreviewSceneStage.scene will be invalid after that point.
