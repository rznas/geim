<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImportContext.GetArtifactFilePath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| guid | The guid of the Artifact File dependency. |
| key | The Artifact key of the Artifact File dependency. |
| fileName | The name of the Artifact File to depend upon. See [[AssetImportContext.GetOutputArtifactFilePath. |

### Returns

**string** The path inside the Library folder from which you can read the content of the requested Artifact File.

### Description

Returns the path of the Artifact file that was created by another importer, and adds a dependency to that file.

This method must be used in conjunction with AssetImportContext.GetOutputArtifactFilePath. Once an Artifact File has been created by another importer, using this method will return this Artifact File path and add a dependency to it. It is then possible to read this Artifact File's content to generate the import result. The following example shows a ScriptedImporter generating a Material and setting its base color using the first pixel color saved in an Artifact File from the example inside AssetImportContext.GetOutputArtifactFilePath. Note: While there is no limit on how many Artifact Files are created using AssetImportContext.GetOutputArtifactFilePath, it is only possible to depends upon the first 32 Artifact Files created by a single Asset import.

```csharp
using System;
using System.IO;
using UnityEditor;
using UnityEditor.AssetImporters;
using UnityEngine;[ScriptedImporter(1, "pixelMat", 1, AllowCaching = true)]
public class MaterialFromFirstPixel : ScriptedImporter
{
    public LazyLoadReference<Texture2D> m_Texture;    public override void OnImportAsset(AssetImportContext ctx)
    {
        var color = Color.magenta;
        if (AssetDatabase.TryGetGUIDAndLocalFileIdentifier(m_Texture, out var stringGuid, out var id))
        {
            string path = string.Empty;
            if (GUID.TryParse(stringGuid, out var guid))
                path = ctx.GetArtifactFilePath(guid, "firstpixelcolor");
            else
                path = ctx.GetArtifactFilePath(AssetDatabase.GUIDToAssetPath(stringGuid), "firstpixelcolor");
            if (!string.IsNullOrEmpty(path))
            {
                var colorString = File.ReadAllText(path);
                ColorUtility.TryParseHtmlString(colorString, out color);
            }
        }        var mat = new Material(Shader.Find("Standard"));
        mat.color = color;
        ctx.AddObjectToAsset("main", mat);
        ctx.SetMainObject(mat);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| path | The path of the Asset whose Artifact File should be the dependency. Note: Although the dependency is the Artifact File (import result) which is stored in the library folder, this parameter is the path to the Asset in the Assets folder, and *not* a path to the Artifact File in the Library folder. |
| fileName | The name of the Artifact File to depend upon. See [[AssetImportContext.GetOutputArtifactFilePath. |

### Returns

**void** The path inside the Library folder from which you can read the content of the requested Artifact File.

### Description

Returns the path of the Artifact file that was created by another importer, and adds a dependency to that file and the source asset path.

In addition to creating a dependency on the import artifact, this overload of the method also adds a dependency to the asset's path. This means if you rename or move the asset that created the artifact File in the project, Unity will re-import the asset, even if the artifact file is unchanged. This can be useful if you want to implement a functional naming convention as part of your asset import processing. Use the GUID or ArtifactKey overload to avoid depending on the asset path if you do not want this.
