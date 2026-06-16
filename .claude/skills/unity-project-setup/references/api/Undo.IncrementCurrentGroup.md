<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo.IncrementCurrentGroup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unity automatically groups undo operations by the current group index.

The current group is automatically incremented based on events eg. mouse down events, executing a menu item increments the current group. But sometimes it is necessary to manually group undo operations.
