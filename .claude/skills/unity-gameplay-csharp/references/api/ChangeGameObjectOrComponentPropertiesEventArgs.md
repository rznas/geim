<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ChangeGameObjectOrComponentPropertiesEventArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A change of this type indicates that a property of a GameObject or Component has changed. This happens for example when Undo.RecordObject is used with an instance of a Component.

### Properties

| Property | Description |
| --- | --- |
| entityId | The EntityId of the modified GameObject or Component. |
| scene | The Scene that contains the GameObject associated with the change. If a Component is changed, this is the GameObject to which the component belongs. |

### Constructors

| Constructor | Description |
| --- | --- |
| ChangeGameObjectOrComponentPropertiesEventArgs | Constructs a new instance. |
