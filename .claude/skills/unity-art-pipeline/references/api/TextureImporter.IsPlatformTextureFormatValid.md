<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporter.IsPlatformTextureFormatValid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| textureType | The TextureImporterType that the importer uses. |
| target | The platform that the setting targets, referred to as the BuilTarget. |
| currentFormat | The TextureImporterFormat to validate. |

### Returns

**bool** Returns true if TextureImporterFormat is valid and can be set. Returns false otherwise.

### Description

Validates TextureImporterFormat based on a specified import type (TextureImporterType) and a specified build target (BuildTarget.).

TextureImporterFormat is not available for all platforms based on the TextureImporterType of a given Texture. Use this method to check that the format set with SetPlatformTextureSettings is a valid format.
