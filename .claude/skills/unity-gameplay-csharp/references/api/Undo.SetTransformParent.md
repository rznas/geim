<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo.SetTransformParent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| transform | The Transform component whose parent is to be changed. |
| newParent | The parent Transform to be assigned. |
| name | The name of this action, to be stored in the Undo history buffer. |

### Description

Sets the parent of transform to the new parent and records an undo operation.

This is equivalent to calling transform.parent = newParent, but it additionally records the undo operation.
