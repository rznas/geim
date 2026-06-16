<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporter.GetSourceTextureWidthAndHeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| width | The source texture's width. |
| height | The source texture's height. |

### Description

Gets the source texture's width and height.

Texture importer settings can affect the width and height of the imported texture. This method provides the source image's dimensions. This method throws an exception if the texture has not finished importing. For example, it would throw an exception if you called this method in an AssetPostprocessor.OnPreprocessAsset callback.
