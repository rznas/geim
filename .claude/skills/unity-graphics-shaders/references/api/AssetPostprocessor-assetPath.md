<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPostprocessor-assetPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The path name of the asset being imported.

```csharp
using UnityEngine;
using UnityEditor;// Automatically sets Textures settings upon first import and prints the
// path from  where is being importedclass CustomImportSettings : AssetPostprocessor
{
    // Increment the version number, when the AssetPostprocessors code/behavior is changed
    static readonly uint k_Version = 0;
    public override uint GetVersion() { return k_Version; }    void OnPreprocessTexture()
    {
        Debug.Log("Importing texture to: " + assetPath);
        TextureImporter importer  = (TextureImporter)assetImporter;
        importer.textureFormat = TextureImporterFormat.ARGB32;
        importer.isReadable = true;
        importer.mipmapEnabled = false;
    }
}
```
