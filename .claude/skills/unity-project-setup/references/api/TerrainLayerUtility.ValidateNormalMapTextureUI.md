<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainLayerUtility.ValidateNormalMapTextureUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| texture | The texture to validate. |
| normalMapTextureType | The return value from the CheckNormalMapTextureType method indicating whether the texture is imported as a normal map. |

### Description

Checks whether the texture is a valid TerrainLayer normal map texture. If it detects that the texture is not valid, it displays a warning message that identifies the issue.

A valid normal map texture must be correctly imported as a normal map, have TextureWrapMode.Repeat wrap mode and mipmaps enabled.
