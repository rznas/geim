<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ChangeChildrenOrderEventArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A change of this type indicates that a GameObject's children have been reordered. This happens when Undo.RegisterChildrenOrderUndo is called or when reordering a child in the hierarchy under the same parent.

### Properties

| Property | Description |
| --- | --- |
| entityId | The EntityId of the parent GameObject whose children have been reordered. Note that this is not the EntityId of the Transform component. |
| scene | The Scene containing the GameObject whose children were reordered. |

### Constructors

| Constructor | Description |
| --- | --- |
| ChangeChildrenOrderEventArgs | Constructs a new instance. |
