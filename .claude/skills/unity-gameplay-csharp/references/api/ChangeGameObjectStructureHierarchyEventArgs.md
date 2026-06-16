<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ChangeGameObjectStructureHierarchyEventArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A change of this type indicates that the structure of a GameObject has changed and any GameObject in the hierarchy below it might have changed. This happens for example when Undo.RegisterFullObjectHierarchyUndo is used.

An event of this type means that essentially anything on the GameObject or any object in the hierarchy below it might have changed in arbitrary ways. This includes deletion and creation of additional objects, adding or deleting components, changes to the hierarchical structure, or modified properties.

### Properties

| Property | Description |
| --- | --- |
| entityId | The EntityId of the GameObject that has been changed. |
| scene | The scene containing the GameObject that has been changed. |

### Constructors

| Constructor | Description |
| --- | --- |
| ChangeGameObjectStructureHierarchyEventArgs | Constructs a new instance. |
