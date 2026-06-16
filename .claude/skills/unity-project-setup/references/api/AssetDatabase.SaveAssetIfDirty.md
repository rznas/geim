<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.SaveAssetIfDirty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The asset object to be saved, if dirty. |
| guid | The GUID of the asset to be saved, if dirty. |

### Description

Writes all unsaved changes to the specified asset to disk.

This function is similar to SaveAssets, and likewise should not be called during serialization.

It does not invoke AssetModificationProcessor.OnWillSaveAssets, as the asset is directly specified.
