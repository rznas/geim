<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporter.SetPlatformTextureSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| platformSettings | A TextureImporterPlatformSettings instance that contains the platform settings. |

### Description

Sets specific target platform settings.

Setup the parameters for a specific platform as described in TextureImporterPlatformSettings.

### Parameters

| Parameter | Description |
| --- | --- |
| platform | The platforms whose settings are to be changed (see below). |
| maxTextureSize | Maximum texture width/height in pixels. |
| textureFormat | Data format for the texture. |
| allowsAlphaSplit | Allows splitting of imported texture into RGB+A so that ETC1 compression can be applied (Android only, and works only on textures that are a part of some atlas). |
| compressionQuality | Value from 0..100, with 0, 50 and 100 being respectively Fast, Normal, Best quality options in the texture importer UI. For Crunch texture formats, this roughly corresponds to JPEG quality levels. |

### Description

Sets specific target platform settings.

The options for the platform string are: "Standalone", "iPhone", "Android", "WebGL", "Windows Store Apps", "PS4", "XboxOne", "Nintendo Switch" and "tvOS".
