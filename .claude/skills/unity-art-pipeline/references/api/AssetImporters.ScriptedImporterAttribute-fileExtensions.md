<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.ScriptedImporterAttribute-fileExtensions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The list of file name extensions that this scripted importer should handle.

By specifying one or more extensions in this list, your ScriptedImporter becomes the default importer for each of those types of asset files. The file name extension list is case insensitive. Unity will match files with any variations of casing for the extensions you specify. Note: Do not assign the same file name extension to more than one ScriptedImporter. If you do, an error message is thrown, and files with that file name extension will not be imported by any ScriptedImporter. You can't override Unity's built-in default importers with this property. For example, if you include ".prefab" in your file name extension list, it will be ignored because it is a built-in default importer type. However, you can use a composite extension to get around this limitation. For example, if you add "composite.prefab" to your list of file name extensions, the ScriptedImporter becomes a valid candidate for the asset file "filename.composite.prefab".

 Note : Composite extensions are considered during the registration of Importer candidates. For example, an importer registered with "composite.extension" doesn't qualify as a candidate for an asset file named "filename.othercomposite.extension". Priority is given to the composite extension with the closest match.

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
