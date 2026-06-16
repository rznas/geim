<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo.RecordObjects.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Records multiple undoable objects in a single call. This is the same as calling Undo.RecordObject multiple times.

**Important:** To correctly handle instances where *objectToUndo* is an instance of a Prefab, PrefabUtility.RecordPrefabInstancePropertyModifications must be called after RecordObject.

 Additional resources: Undo.RecordObject.
