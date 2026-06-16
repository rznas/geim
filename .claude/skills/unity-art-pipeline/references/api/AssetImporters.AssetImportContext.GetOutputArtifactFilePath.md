<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImportContext.GetOutputArtifactFilePath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| fileName | Unique identifier to refer to this Artifact File. |

### Returns

**string** The file path which can be used to create a new Artifact File.

### Description

Returns the path where to write a new Artifact File with the given fileName.

An Artifact File is part of the result of an importer and can contain any data that are not UnityEngine.Object. For example the 'info' Artifact File is reserved by Unity and stores the preview data of the imported Main Object.

The following example shows how to add an Artifact File for a TextureImporter AssetPostprocessor to save the color of the first pixel of the texture inside an ArtifactFile. See AssetImportContext.GetArtifactFilePath to see how this information can be used by another importer to depends on this value and not the whole texture.

```csharp
using System;
using System.IO;
using UnityEditor;
using UnityEngine;public class SaveFirstPixelColor : AssetPostprocessor
{
    public override uint GetVersion()
    {
        return 1;
    }    void OnPostprocessTexture(Texture2D texture)
    {
        if (assetPath.StartsWith("Assets/"))
        {
            string path = context.GetOutputArtifactFilePath("firstpixelcolor");
            if (!string.IsNullOrEmpty(path))
                File.WriteAllText(path, $"#{ColorUtility.ToHtmlStringRGBA(texture.GetPixel(0, 0))}");
        }
    }
}
```
