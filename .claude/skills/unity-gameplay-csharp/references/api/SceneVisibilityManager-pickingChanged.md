<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneVisibilityManager-pickingChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The event raised whenever the picking state of a GameObject changes.

For performance reasons, this event is not raised for every picking operation. For example, if you select multiple GameObjects and disable picking on them all at once, the event will be raised only once.
