<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo.FlushUndoRecordObjects.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Ensure objects recorded using RecordObject or RecordObjects are registered as an undoable action. In most cases there is no reason to invoke FlushUndoRecordObjects since it's automatically done right after mouse-up and certain other events that conventionally marks the end of an action.
