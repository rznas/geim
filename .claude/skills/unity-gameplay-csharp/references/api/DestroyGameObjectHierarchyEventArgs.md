<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DestroyGameObjectHierarchyEventArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A change of this type indicates that a GameObject and the entire hierarchy below it has been destroyed. This happens for example when Undo.DestroyObjectImmediate is used with an GameObject.

### Properties

| Property | Description |
| --- | --- |
| entityId | The EntityId of the GameObject that has been destroyed. |
| parentEntityId | The EntityId for the parent GameObject of the GameObject that has been destroyed. |
| scene | The scene containing the GameObject that has been destroyed. |

### Constructors

| Constructor | Description |
| --- | --- |
| DestroyGameObjectHierarchyEventArgs | Constructs a new instance. |
