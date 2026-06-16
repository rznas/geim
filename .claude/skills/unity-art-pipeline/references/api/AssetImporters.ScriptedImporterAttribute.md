<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.ScriptedImporterAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Class attribute used to register a custom asset importer derived from ScriptedImporter with Unity's Asset import pipeline.

```csharp
using UnityEngine;
using UnityEditor.AssetImporters;[ScriptedImporter(version: 1, ext: "sphere", AllowCaching = true)]
public class SphereImporter : ScriptedImporter
{
    public override void OnImportAsset(AssetImportContext ctx)
    {
        // ...
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| AllowCaching | Enable cache server uploads and downloads. |
| fileExtensions | The list of file name extensions that this scripted importer should handle. |
| importQueuePriority | Enables controlling the ordering of asset import based on type. Positive values delay the processing of source asset files while negative values place them earlier in the import process. |
| overrideFileExtensions | List of file name extensions (not including the leading period character) that the scripted importer can handle in addition to the default file name extension(s). |
| version | Importer version number used by the import layer to detect a new version of the importer. |

### Constructors

| Constructor | Description |
| --- | --- |
| ScriptedImporterAttribute | Use the ScriptedImporter attribute to register a custom importer derived from ScriptedImporter with Unity's Asset import pipeline. |
