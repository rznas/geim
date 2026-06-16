<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CreateGameObjectHierarchyEventArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A change of this type indicates that a GameObject has been created, possibly with additional objects below it in the hierarchy. This happens for example when Undo.RegisterCreatedObjectUndo is used with a GameObject.

### Properties

| Property | Description |
| --- | --- |
| entityId | The EntityId of the GameObject that has been created. |
| scene | The scene containing the GameObject that has been created. |

### Constructors

| Constructor | Description |
| --- | --- |
| CreateGameObjectHierarchyEventArgs | Constructs a new instance. |
