<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ChangeRootOrderEventArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A change of this type indicates that a GameObject placed at the scene root has been reordered. This happens when Undo.SetSiblingIndex is called or when reordering a root GameObject in the hierarchy under the same parent.

### Properties

| Property | Description |
| --- | --- |
| entityId | The EntityId of the GameObject being reordered. Note that this is not the EntityId of the Transform component. |
| scene | The Scene containing the GameObject whose root order index was changed. |

### Constructors

| Constructor | Description |
| --- | --- |
| ChangeRootOrderEventArgs | Constructs a new instance. |
