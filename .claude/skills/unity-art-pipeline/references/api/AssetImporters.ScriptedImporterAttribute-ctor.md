<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.ScriptedImporterAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| version | A number that is used by the import pipeline to detect new versions of the importer script. Changing this number will trigger a re-import of all assets matching the listed extensions. |
| exts | List of file name extensions (not including the leading period character) that the scripted importer handles. |
| ext | Single file name extension (not including the leading period character) that the scripted importer handles. |
| importQueueOffset | Gives control over ordering of asset import based on types. Positive values delay the processing of source asset files while negative values place them earlier in the import process. |
| overrideExts | List of file name extensions (not including the leading period character) that the scripted importer can handle in addition to the default file name extension(s). |

### Description

Use the ScriptedImporter attribute to register a custom importer derived from ScriptedImporter with Unity's Asset import pipeline.

Always increment a scripted importer's version number whenever the script changes. This forces Assets imported with lower version numbers to be re-imported.

If the Editor's **Auto Refresh** preference is enabled, editing a script outside of the editor and saving it triggers a re-import of both the script and all Assets of the corresponding type. The following example declares an importer that handles files with extension `cb` and `cube`.

```csharp
using UnityEngine;
using UnityEditor.AssetImporters;[ScriptedImporter(1, new[] {"cb", "cube"})]
public class CubeImporter : ScriptedImporter
{
    public override void OnImportAsset(AssetImportContext ctx)
    {
        // ...
    }
}
```

The following example declares an importer that handles files with extension `sphere`. Its **importQueueOffset** parameter is set to 10, forcing assets with extension `sphere` to be imported **after** all other scripted importers that have an **importQueueOffset** of less than 10.

```csharp
using UnityEngine;
using UnityEditor.AssetImporters;[ScriptedImporter(1, "sphere", 10)]
public class SphereImporter : ScriptedImporter
{
    public override void OnImportAsset(AssetImportContext ctx)
    {
        // ...
    }
}
```

The following example declares an importer that handles files with the extension `fbb` and that can be used to import `fbx` files instead of Unity's default ModelImporter.

```csharp
using UnityEngine;
using UnityEditor.AssetImporters;[ScriptedImporter(1, new[] {"fbb"}, new[] {"fbx"})]
public class CustomModelImporter : ScriptedImporter
{
    public override void OnImportAsset(AssetImportContext ctx)
    {
        // ...
    }
}
```
