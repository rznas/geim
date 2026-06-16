<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporter.IsDefaultPlatformTextureFormatValid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| currentFormat | The TextureImporterType that the importer uses. |
| textureType | The TextureImporterFormat to validate. |

### Returns

**bool** Returns true if TextureImporterFormat is valid and can be set. Returns false otherwise.

### Description

Validates TextureImporterFormat based on the type of the current format (TextureImporterType) and the default platform.

This method depends on the platforms that are available in the current Unity installation. Because some platforms do not support all formats, these formats cannot be used with the Default Settings. Use this method to check that a format is valid and can be set.
