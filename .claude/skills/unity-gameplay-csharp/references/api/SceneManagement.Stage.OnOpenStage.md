<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.Stage.OnOpenStage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** `true` if Unity opened the Stage successfully, otherwise returns `false`.

### Description

Unity calls this method when the Stage is opened. Classes that inherit from Stage should implement initialization logic in this method.

A Stage can remain open even after another Stage becomes the active Stage. Unity only closes a Stage once it's no longer visible in the Scene view breadcrumb bar. OnOpenStage and OnCloseStage is only called once each.
