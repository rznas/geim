<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImportContext.SetMainObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The object to be set as the main object. This object must already be added with the AddObjectToAsset method. |

### Description

Sets the main object for import.

Use this method to specify the main object in the asset file.

 Note: Before invoking this method, the object that is passed as the argument must first be added with AddObjectToAsset. If this method is not called, then one of the objects added through AddObjectToAsset is arbitrarily promoted as the main object. If objects of type GameObject are added through AddObjectToAsset, then SetMainObject must refer to one of these objects. Passing a different type of object results in the selection being ignored and an arbitrary GameObjects is promoted as the main object.

Note: This method returns an error when used in an AssetPostprocessor because the Importer sets the main object later in the import process.
