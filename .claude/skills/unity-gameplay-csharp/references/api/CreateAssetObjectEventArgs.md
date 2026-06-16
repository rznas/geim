<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CreateAssetObjectEventArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A change of this type indicates that an asset object has been created. This happens for example when Undo.RegisterCreatedObjectUndo is used with an instance of an asset (e.g. Texture). Note that this only covers creation of asset objects in memory and not creation of new assets in the project on disk.

### Properties

| Property | Description |
| --- | --- |
| entityId | The EntityId of the modified asset. |
| guid | The GUID of the new asset. |
| scene | The Scene that contains the new asset. This is usually an invalid scene unless the asset is explicitly associated in a scene (e.g. RenderSettings). |

### Constructors

| Constructor | Description |
| --- | --- |
| CreateAssetObjectEventArgs | Constructs a new instance. |
