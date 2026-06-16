<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporter.GetPlatformTextureSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| platform | The platform for which settings are required (see options below). |
| maxTextureSize | Maximum texture width/height in pixels. |
| textureFormat | Format of the texture for the given platform. |
| compressionQuality | Value from 0..100, equivalent to the standard JPEG quality setting. |
| etc1AlphaSplitEnabled | Status of the ETC1 and alpha split flag. |

### Returns

**bool** True if the platform override was found, false if no override was found.

### Description

Gets platform specific texture settings.

The values for the chosen platform are returned in the "out" parameters. The options for the platform string are "Standalone", "Web", "iPhone", "Android", "WebGL", "Windows Store Apps", "PS4", "XboxOne", "Nintendo Switch" and "tvOS".

```csharp
using UnityEngine;
using UnityEditor;
using UnityEngine.UI;
using System.Collections;public class DisplayInfo : EditorWindow
{
    [MenuItem("PlatformSettings/GetSettingsForAndroid")]
    static void GetAndroidSettings()
    {
        string  platformString = "Android";
        int     platformMaxTextureSize = 0;
        TextureImporterFormat platformTextureFmt;
        int     platformCompressionQuality = 0;
        bool    platformAllowsAlphaSplit = false;        TextureImporter ti = (TextureImporter)TextureImporter.GetAtPath("Assets/characters.png");
        if (ti.GetPlatformTextureSettings(platformString, out platformMaxTextureSize, out platformTextureFmt, out platformCompressionQuality, out platformAllowsAlphaSplit))
        {
            Debug.Log("Found some overrides for platform: " + platformString);
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| platform | The platform whose settings are required (see below). |
| maxTextureSize | Maximum texture width/height in pixels. |
| textureFormat | Format of the texture. |
| compressionQuality | Value from 0..100, equivalent to the standard JPEG quality setting. |

### Returns

**bool** True if the platform override was found, false if no override was found.

### Description

Gets platform specific texture settings.

The values for the chosen platform are returned in the "out" parameters. The options for the platform string are "Standalone", "Web", "iPhone", "Android", "WebGL", "Windows Store Apps", "PS4", "XboxOne", "Nintendo Switch" and "tvOS".

### Parameters

| Parameter | Description |
| --- | --- |
| platform | The platform whose settings are required (see below). |
| maxTextureSize | Maximum texture width/height in pixels. |
| textureFormat | Format of the texture. |

### Returns

**bool** True if the platform override was found, false if no override was found.

### Description

Gets platform specific texture settings.

The values for the chosen platform are returned in the "out" parameters. The options for the platform string are "Standalone", "Web", "iPhone", "Android", "WebGL", "Windows Store Apps", "PS4", "XboxOne", "Nintendo Switch" and "tvOS".

### Parameters

| Parameter | Description |
| --- | --- |
| platform | The platform whose settings are required (see below). |

### Returns

**TextureImporterPlatformSettings** A TextureImporterPlatformSettings structure containing the platform parameters.

### Description

Gets platform specific texture settings.

Returns the parameters for the chosen platform. The options for the platform string are "Standalone", "Web", "iPhone", "Android", "WebGL", "Windows Store Apps", "PS4", "XboxOne", "Nintendo Switch" and "tvOS".
