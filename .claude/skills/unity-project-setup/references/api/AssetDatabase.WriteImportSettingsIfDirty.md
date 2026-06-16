<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.WriteImportSettingsIfDirty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The path to write the import settings to. |

### Returns

**bool** Returns true if the operation was successful.

### Description

Writes the import settings to disk.

This method writes unsaved settings to disk, which results in the reimport of any assets that depend on these settings.

```csharp
using UnityEngine;
using UnityEditor;
public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Set Cookies Import Settings")]
    static void SetCookiesImportSettings()
    {
        for (var i = 0; i < 10; i++)
        {
            var texturePath = $"Assets/Lighting/Cookies/LightingCookie{i}.jpg";
            var textureImporter =
                TextureImporter.GetAtPath(texturePath) as TextureImporter;
            textureImporter.textureType = TextureImporterType.Cookie;
            textureImporter.alphaSource = TextureImporterAlphaSource.FromGrayScale;
            //This method saves the Cookies import settings, without it the editor will ask you to apply unapplied settings
            AssetDatabase.WriteImportSettingsIfDirty(texturePath);
        }
    }
}
```
