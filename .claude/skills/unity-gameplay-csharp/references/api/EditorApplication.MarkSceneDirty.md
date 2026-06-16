<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication.MarkSceneDirty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Explicitly mark the current opened Scene as modified.

Normally, an operation resulting in a Scene file change should register itself with the undo system, which automatically handles Scene dirty state tracking. However, if for whatever reason you can't make the operation undoable, you can use this function to explicitly mark the Scene as modified, so that the user will be prompted to save the Scene when it's being closed.
