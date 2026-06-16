<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ChangeGameObjectStructureEventArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A change of this type indicates that the structure of a GameObject has changed. This happens when a component is added to or removed from the GameObject using Undo.AddComponent or Undo.DestroyObjectImmediate.

Note that multiple changes to the structure (e.g. multiple components added) may be represented by a single event.

### Properties

| Property | Description |
| --- | --- |
| entityId | The EntityId of the GameObject that has been changed. |
| scene | The Scene containing the GameObject that has been changed. |

### Constructors

| Constructor | Description |
| --- | --- |
| ChangeGameObjectStructureEventArgs | Constructs a new instance. |
