<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPostprocessor.OnPreprocessTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Add this function to a subclass to get a notification just before the texture importer is run.

This lets you set up default values for the import settings.

 Use this callback if you want to change the compression format of the texture.

```csharp
using UnityEngine;
using UnityEditor;// Automatically convert any texture file with "_bumpmap"
// in its file name into a normal map.class MyTexturePostprocessor : AssetPostprocessor
{
    // Increment the version number, when the AssetPostprocessors code/behavior is changed
    static readonly uint k_Version = 0;
    public override uint GetVersion() { return k_Version; }    void OnPreprocessTexture()
    {
        if (assetPath.Contains("_bumpmap"))
        {
            TextureImporter textureImporter  = (TextureImporter)assetImporter;
            textureImporter.convertToNormalmap = true;
        }
    }
}
```
