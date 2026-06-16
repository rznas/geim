<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.SpriteImportData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Struct that represents how Sprite asset should be generated when calling TextureGenerator.GenerateTexture.

### Properties

| Property | Description |
| --- | --- |
| alignment | Pivot value represented by SpriteAlignment. |
| border | Border value for the generated Sprite. |
| name | Name for the generated Sprite. |
| outline | Sprite Asset creation uses this outline when it generates the Mesh for the Sprite. If this is not given, SpriteImportData.tesselationDetail will be used to determine the mesh detail. |
| pivot | Pivot value represented in Vector2. |
| rect | Position and size of the Sprite in a given texture. |
| spriteID | An identifier given to a Sprite. Use this to identify which data was used to generate that Sprite. |
| tessellationDetail | Controls mesh generation detail. This value will be ignored if SpriteImportData.ouline is provided. |
