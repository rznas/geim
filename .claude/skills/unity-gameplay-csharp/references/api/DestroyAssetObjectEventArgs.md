<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DestroyAssetObjectEventArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A change of this type indicates that an asset object has been destroyed. This happens for example when Undo.DestroyObjectImmediate is used with an instance of an asset (e.g. Texture). Note that this only covers destruction of asset objects in memory and not deletion of assets in the project on disk.

### Properties

| Property | Description |
| --- | --- |
| entityId | The EntityId of the modified asset. |
| guid | The GUID of the removed asset. |
| scene | The scene that contained the asset. This is usually an invalid scene unless the asset is explicitly associated in a scene (e.g. RenderSettings). |

### Constructors

| Constructor | Description |
| --- | --- |
| DestroyAssetObjectEventArgs | Constructs a new instance. |
