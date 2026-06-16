<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.ScriptedImporter.SupportsRemappedAssetType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of asset to check. |

### Returns

**bool** Returns true if the importer supports remapping the given type. Otherwise, returns false.

### Description

Override this method if your ScriptedImporter supports remapping specific asset types.

A remapped asset must be explicitly handled by the importer. For example, an importer for a file format that supports materials can assign a remapped Material reference from the external object map directly to the MeshRenderer component.

Additional resources: AssetImporter.GetExternalObjectMap.
