<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImportContext.AddObjectToAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| identifier | A unique identifier associated to this object. |
| obj | The Unity Object to add to the asset. |
| thumbnail | An optional 2D texture to use as the thumbnail for this object. |

### Description

Adds an object to the result of the import operation.

Use this method to add objects to the resulting asset. AddObjectToAsset can be called multiple times if more than one unity object is the result of the import process. Note: You must make sure that your importer provides a unique identifier for each added object. You must also make sure that your code regenerates the same identifier each time the file is re-imported: identifiers should be deterministic. This allows Unity to keep match previously imported objects with the newly created objects. The identifier only needs to be unique within the context of the Asset file and not globally unique across your whole project.
