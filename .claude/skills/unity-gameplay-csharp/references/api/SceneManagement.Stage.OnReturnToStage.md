<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.Stage.OnReturnToStage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unity calls this method when you return to a Stage that is already open.

A Stage can remain open even after another Stage becomes the active Stage. Unity only closes a Stage once it's no longer visible in the Scene view breadcrumb bar. OnReturnToStage is called when clicking the breadcrumb of a stage that is not the current one.
