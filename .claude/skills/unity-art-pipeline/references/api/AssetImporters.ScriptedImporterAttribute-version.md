<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.ScriptedImporterAttribute-version.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Importer version number used by the import layer to detect a new version of the importer.

The import layer uses this version number to trigger re-imports when there is a new version and apply the latest changes made to the scripted importer.

```csharp
using UnityEngine;
using UnityEditor.AssetImporters;[ScriptedImporter(1, "sphere")]
public class SphereImporter : ScriptedImporter
{
    public override void OnImportAsset(AssetImportContext ctx)
    {
        // ...
    }
}
```
