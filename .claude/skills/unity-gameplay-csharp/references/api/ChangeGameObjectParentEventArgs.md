<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ChangeGameObjectParentEventArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A change of this type indicates that the parent of a GameObject has changed. This happens when Undo.SetTransformParent or SceneManager.MoveGameObjectToScene is used.

### Properties

| Property | Description |
| --- | --- |
| entityId | The EntityId of the GameObject whose parent changed. Note that this is not the EntityId of the Transform component. |
| newParentEntityId | The EntityId of the GameObject that is the new parent of the target. Note that this is not the EntityId of its Transform. |
| newScene | The Scene containing the new parent. This is useful to detect whether a GameObject was moved to another scene or moved to the root of a scene. |
| previousParentEntityId | The EntityId of the GameObject that was the previous parent of the target. Note that this is not the EntityId of its Transform. |
| previousScene | The scene containing the previous parent. This is useful to detect whether a GameObject was moved to another scene. |

### Constructors

| Constructor | Description |
| --- | --- |
| ChangeGameObjectParentEventArgs | Constructs a new instance. |
