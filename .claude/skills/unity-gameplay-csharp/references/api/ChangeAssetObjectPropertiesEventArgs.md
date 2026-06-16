<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ChangeAssetObjectPropertiesEventArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A change of this type indicates that a property of an asset object in memory has changed. This happens for example when Undo.RecordObject is used with an instance of an asset (e.g. Texture). Note that this only covers changes to asset objects in memory and not changes to assets in the project on disk.

### Properties

| Property | Description |
| --- | --- |
| entityId | The EntityId of the modified asset. |
| guid | The GUID of the changed asset. |
| scene | The Scene that contains the modified asset. This is usually an invalid scene unless the asset is explicitly associated in a scene (e.g. RenderSettings). |

### Constructors

| Constructor | Description |
| --- | --- |
| ChangeAssetObjectPropertiesEventArgs | Constructs a new instance. |
