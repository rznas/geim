<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo.DestroyObjectImmediate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| objectToUndo | The object that will be destroyed. |

### Description

Destroys the object and records an undo operation so that it can be recreated.

Destroys the object with the same behaviour as DestroyImmediate (objectToUndo, true); Also stores all destroyed objects in the undo buffer so that they can be fully recreated.
